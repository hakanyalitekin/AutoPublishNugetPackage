

# Otomatik Nuget Paket Yükleyici

Not: Fikir edinmek için önce makale okunmalıdır.
https://hakanyalitekin.medium.com/local-nuget-server-kurulumu-ve-kullan%C4%B1m%C4%B1-d0fd4187c55

### Adım 1
İndirme işleminden sonra .zip içeriğini kalıcı bir klasöre aktarılmalıdır. Örneğin D:\AutoNuget\

### Adım 2 

**script.ps1**  içeriği bir editör ile açılmalıdır ve aşağıdaki alanlar güncellenmelidir.

#Scriptin çalışacağı dosya yolu
`$folderPath = "E:\AutoNuget\"` 

#Publish yapılacak Nuget serverin yolu NOT:Mutlaka sonunda nuget olmalı
  `$nugetUrl = "http://nugetserver/nuget" `

#Nuget Api Key
  `$nugetKey = "123456" `


### Adım 3
**nuspec-template** klasörü altına, her bir **.dll** için, bir kereye mahsus örnek **nuspec** dosyası oluşturulmalıdır



### Adım 4

``` xml
<xml>
<Package Name="DemoPackage" Version="1.0.0" VersionAlias="{DemoPackage_Version}" />
</xml>

```
