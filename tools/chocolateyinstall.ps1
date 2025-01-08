
$ErrorActionPreference = 'Stop'
  
$packageName = 'synologydrive'
$url         = 'https://global.synologydownload.com/download/Utility/SynologyDriveClient/3.5.1-16102/Windows/Installer/x86_64/Synology%20Drive%20Client-3.5.1-16102-x64.msi'
$checksum    = '35f35849f0fc64a04b01dd7332a15662cc172e00c3332f0ac62bebe8582c68ce'
  
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