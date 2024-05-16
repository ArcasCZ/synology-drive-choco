
$ErrorActionPreference = 'Stop'
  
$packageName = 'synologydrive'
$url         = 'https://global.synologydownload.com/download/Utility/SynologyDriveClient/3.5.0-16084/Windows/Installer/x86_64/Synology%20Drive%20Client-3.5.0-16084-x64.msi'
$checksum    = '5fc1eb8af607fab0e77add9a5667ee60a10541cdc26c652cb292da484ade09f5'
  
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