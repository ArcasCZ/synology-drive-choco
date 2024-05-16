
$ErrorActionPreference = 'Stop'
  
$packageName = 'synologydrive'
$url         = 'https://global.synologydownload.com/download/Utility/SynologyDriveClient/3.5.0-16084/Windows/Installer/i686/Synology%20Drive%20Client-3.5.0-16084-x86.msi'
$checksum    = '0ad1850446ec23258bc56cd5f8b5170dac3db9f166923d9e5c4f2b221683b574'
  
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