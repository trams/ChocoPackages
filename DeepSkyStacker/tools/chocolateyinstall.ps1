$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/deepskystacker/DSS/releases/download/4.2.5/DSS-4.2.5-Setup32.exe'
$url64      = 'https://github.com/deepskystacker/DSS/releases/download/4.2.5/DSS-4.2.5-Setup64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'DeepSkyStacker*'

  checksum      = 'B5BC236F8AFF6EA9775A29E731E48A55D4AF12F59446AB60475F87079BA536EA'
  checksumType  = 'sha256'
  checksum64    = '5FE0BC48742427847B8D2DC6EA623927E0863F89519C877C92207FEC5B9C7ECC'
  checksumType64= 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
