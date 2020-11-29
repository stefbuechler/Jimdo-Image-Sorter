$SourcePath = "C:\Temp\Input"
$DestinationPath = "C:\Temp\Export"
New-Item -Path $DestinationPath -ItemType Directory

$ItemTypes = '*.jpg','*.png','*.gif'

$SecuenceNumber = 0

foreach ($item in $ItemTypes){

$Files = Get-ChildItem -Path $SourcePath -Recurse -Include $item 

foreach ($file in $Files){

Get-ChildItem -Path $File | Rename-Item -NewName {$_.Basename.Replace("image","$SecuenceNumber") + $_.extension}


$SecuenceNumber ++
}
}


foreach ($item in $ItemTypes){

$Files = Get-ChildItem -Path $SourcePath -Recurse -Include $item 

foreach ($file in $Files){
Move-Item -Path $file -Destination $DestinationPath


}}
