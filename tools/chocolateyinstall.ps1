
$ErrorActionPreference = 'Stop'
  
$packageName = 'synologydrive'
$url         = 'https://global.synologydownload.com/download/Utility/SynologyDriveClient/3.4.0-15724/Windows/Installer/i686/Synology%20Drive%20Client-3.4.0-15724-x86.msi'
$checksum    = '5afeda72ca10a936df98a61ba2b54f8c1d1e767cf6e6d45382b24fd18ec77f10'
  
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