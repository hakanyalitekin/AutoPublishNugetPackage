$folderPath = "E:\AutoNuget\" #Scriptin çalışacağı dosya yolu
$nuspecFolderPath = "$($folderPath)nuspec\"
$nupkgFolderPath = "$($folderPath)nupkg\"
$nuspecTemplateFolderPath = "$($folderPath)nuspec-template\"
$packFile = "$($folderPath)pack.ps1"
$pushFile = "$($folderPath)push.ps1"
$nugetUrl = "http://nugetserver/nuget" #Publish yapılacak Nuget serverin yolu NOT:Mutlaka sonunda nuget olmalı
$nugetKey = "123456CokZor" #Nuget Api Key 

Clear-Content $packFile
Clear-Content $pushFile

Copy-Item -Path "$($nuspecTemplateFolderPath)\*" -Destination $nuspecFolderPath

[xml]$config = Get-Content "$($folderPath)config.xml"
$nodes = $config.SelectNodes("//*[@Name]")

$folderFiles = Get-ChildItem "$($nuspecFolderPath)"

foreach ($node in $nodes) {
    $name = $node.attributes['Name'].value
    $version = $node.attributes['Version'].value
	$versionAlias = $node.attributes['VersionAlias'].value
	
	Add-Content $packFile "nuget pack $($nuspecFolderPath)$name$($assoc.Name).nuspec -OutputDirectory $nupkgFolderPath"
	Add-Content $pushFile "nuget push $($nupkgFolderPath)$($name).$($version).nupkg -source $($nugetUrl) $($nugetKey)"
	
	foreach ($file in $folderFiles) {
		$fileName =	$file.Name
		(Get-Content $nuspecFolderPath$fileName).replace($versionAlias, $version) | Set-Content "$($nuspecFolderPath)$fileName"
	}
}
&$packFile
&$pushFile


nuget locals all -clear