# AutoPublishNugetPackage
Otomatik Nuget Paket Yükleyici

# Otomatik Nuget Paket Yükleyici

#### Adım 1
İndirme işleminden sonra .zip içeriğini kalıcı bir klasöre aktarılmalıdır. Örneğin D:\AutoNuget\

#### Adım 2 

**script.ps1**  içeriği bir editör ile açılmalıdır ve aşağıdaki alanlar güncellenmelidir.

#Scriptin çalışacağı dosya yolu
`$folderPath = "E:\AutoNuget\"` 

#Publish yapılacak Nuget serverin yolu NOT:Mutlaka sonunda nuget olmalı
`$nugetUrl = "http://nugetserver/nuget" `

#Nuget Api Key
`$nugetKey = "123456CokZor" `
