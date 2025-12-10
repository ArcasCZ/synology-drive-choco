
$ErrorActionPreference = 'Stop'
  
$packageName = 'synologydrive'
$url         = 'https://global.synologydownload.com/download/Utility/SynologyDriveClient/4.0.1-17885/Windows/Installer/x86_64/Synology%20Drive%20Client-4.0.1-17885-x64.msi'
$checksum    = 'F447E5740404C3F5FDEAE29D356C8E68FE256F33F5089AE848C2F3BD49B2AAB4'
  
$packageArgs = @{
  packageName            = $packageName
  fileType               = 'msi'
  url                    = $url
  silentArgs             = '/passive /qn /norestart'
  checksum               = $checksum
  checksumType           = 'sha256'
  validExitCodes         = @(0)
}
Install-ChocolateyPackage @packageArgs
