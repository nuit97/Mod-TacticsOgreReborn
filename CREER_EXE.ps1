# Tactics Ogre Reborn: recree le binaire valide a partir de l'exe unpacked strictement compatible.
# Le fichier de sortie est créé dans le dossier du pack.
param([string]$Source = "")
$ErrorActionPreference = 'Stop'
$shaSource = '7b0230a11498f40396c9048345e7cfe0ef442cb7ca8faffc6f197920d2669599'
$shaTarget = 'e84a5857cd04fe316b4c81c77405b84889537bb00291c327b00c6d65fafb5a01'
$shaPatch = '7c1dba87bb8ea8f1de0beed1ad6478de6acc4116e495803765988a9f6fd35332'
$patchPath = Join-Path $PSScriptRoot 'TOR_Mode_Manuel_EXACT_v1.0.bps'
$outputPath = Join-Path $PSScriptRoot 'Tactics Ogre Reborn - MODE MANUEL.exe'
function Get-Sha([string]$path) {
    return (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant()
}
function Read-BpsNumber([byte[]]$bytes, [ref]$position) {
    [long]$value = 0
    [long]$shift = 1
    while ($true) {
        if ($position.Value -ge $bytes.Length) { throw 'Fin BPS inattendue.' }
        [int]$byteVal = $bytes[$position.Value]
        $position.Value = $position.Value + 1
        $value += ($byteVal -band 127) * $shift
        if (($byteVal -band 128) -ne 0) { return $value }
        $shift = $shift * 128
        $value += $shift
    }
}
try {
    Write-Host 'Mode Manuel v1.1 — Windows / Steam'
    Write-Host 'Le mode complet requiert aussi Buff Card Removal de ChaoticBrave.' -ForegroundColor Yellow
    Write-Host 'Télécharge le fichier principal sur la page de son auteur.'
    Write-Host 'https://www.nexusmods.com/tacticsogrereborn/mods/27'
    Write-Host 'Les étapes de sauvegarde et d''installation figurent dans GUIDE_INSTALLATION.md.'
    if (-not $Source) {
        $Source = Join-Path $PSScriptRoot 'Tactics Ogre Reborn.exe.unpacked.exe'
        if (-not (Test-Path -LiteralPath $Source -PathType Leaf)) {
            $Source = (Read-Host 'Chemin complet de ton EXE original unpacked (glisser-deposer possible)').Trim('"')
        }
    }
    $Source = $Source.Trim().Trim('"')
    if (-not (Test-Path -LiteralPath $Source -PathType Leaf)) { throw "Fichier source inexistant : $Source" }
    if (-not (Test-Path -LiteralPath $patchPath -PathType Leaf)) { throw 'Fichier BPS manquant.' }
    if ((Get-Sha $Source) -ne $shaSource) { throw 'Executable source incompatible (SHA256 different). Rien ne sera modifie.' }
    if ((Get-Sha $patchPath) -ne $shaPatch) { throw 'Patch corrompu ou modifie. Rien ne sera modifie.' }
    if (Test-Path -LiteralPath $outputPath -PathType Leaf) {
        if ((Get-Sha $outputPath) -eq $shaTarget) {
            Write-Host 'Le fichier valide existe deja, aucune modification.' -ForegroundColor Green
            exit 0
        }
        throw 'Un executable different porte deja le nom de sortie. Renomme-le avant de continuer.'
    }
    $sourcePath = (Get-Item -LiteralPath $Source).FullName
    [byte[]]$src = [IO.File]::ReadAllBytes($sourcePath)
    [byte[]]$bps = [IO.File]::ReadAllBytes($patchPath)
    if ([Text.Encoding]::ASCII.GetString($bps,0,4) -ne 'BPS1') { throw 'En-tete BPS invalide.' }
    [int]$pos=4
    [long]$sourceSize=Read-BpsNumber $bps ([ref]$pos)
    [long]$targetSize=Read-BpsNumber $bps ([ref]$pos)
    [long]$metaSize=Read-BpsNumber $bps ([ref]$pos)
    if ($sourceSize -ne $src.Length -or $targetSize -ne 14183936) { throw 'Tailles de fichier inattendues.' }
    $pos += [int]$metaSize
    [byte[]]$dst=New-Object byte[] ([int]$targetSize)
    [int]$outPos=0
    while ($outPos -lt $dst.Length) {
        [long]$action=Read-BpsNumber $bps ([ref]$pos)
        [int]$mode=[int]($action -band 3)
        [int]$count=[int]([math]::Floor($action / 4) + 1)
        if ($count -le 0 -or $outPos + $count -gt $dst.Length) { throw 'Action BPS depasse la taille cible.' }
        switch ($mode) {
            0 { [Array]::Copy($src,$outPos,$dst,$outPos,$count) }
            1 {
                if ($pos + $count -gt $bps.Length - 12) { throw 'Patch BPS tronque.' }
                [Array]::Copy($bps,$pos,$dst,$outPos,$count)
                $pos += $count
            }
            default { throw 'Mode BPS inattendu dans ce patch.' }
        }
        $outPos += $count
    }
    if ($pos -ne $bps.Length - 12) { throw 'Longueur BPS inattendue.' }
    $sha = [System.Security.Cryptography.SHA256]::Create()
    try { $outputHash = [BitConverter]::ToString($sha.ComputeHash($dst)).Replace('-','').ToLowerInvariant() }
    finally { $sha.Dispose() }
    if ($outputHash -ne $shaTarget) { throw 'Verification SHA256 de sortie echouee. Aucun EXE ecrit.' }
    $tempPath = Join-Path $PSScriptRoot ([guid]::NewGuid().ToString() + '.tmp')
    try {
        [IO.File]::WriteAllBytes($tempPath, $dst)
        [IO.File]::Move($tempPath, $outputPath)
    } finally {
        if ([IO.File]::Exists($tempPath)) { [IO.File]::Delete($tempPath) }
    }
    Write-Host 'SUCCES ! Exe cree : ' $outputPath -ForegroundColor Green
    Write-Host 'Suis le guide à partir de l''étape 3 pour installer le fichier généré.' -ForegroundColor Yellow
} catch {
    Write-Host "ECHEC : $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}
