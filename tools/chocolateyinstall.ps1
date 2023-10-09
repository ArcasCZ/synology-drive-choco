
$ErrorActionPreference = 'Stop'
  
$packageName = 'synologydrive'
$url         = 'https://global.synologydownload.com/download/Utility/SynologyDriveClient/3.3.0-15082/Windows/Installer/Synology%20Drive%20Client-3.3.0-15082.msi?model=RS1219%2B&bays=8&dsm_version=7.2.1&build_number=69057'
$checksum    = '692a28d4e6f572a2a0e42edddd228f0e355e9926837020c46374aabaf2a60d85'
  
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