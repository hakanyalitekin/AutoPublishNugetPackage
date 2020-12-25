

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
**lib** klasörüne pakete dönüştürülecek **dll**(ler) eklenmelidir.


### Adım 4
**nuspec-template** klasörü altına, her bir **.dll** için, bir kereye mahsus örnek **nuspec** dosyası oluşturulmalıdır.



### Adım 5
**config.xml** içerisine aşağıdaki örnek eklenmelidir. Burada dikkat edilmesi gereken husus VersionAlias ile 4.adımda oluşturulan **nuspec**'in versiyon kısmının biribiri ile aynı olmasıdır.

``` xml
<xml>
<Package Name="DemoPackage" Version="1.0.0" VersionAlias="{DemoPackage_Version}" />
</xml>
```

## Çalıştırma
Son olarak,  **script.ps1**'in dosya yolu kopyalanıp, Power Shell de **admin modda**  çalıştırılmalıdır.

Örneğin `D:\AutoNuget\script.ps1`
