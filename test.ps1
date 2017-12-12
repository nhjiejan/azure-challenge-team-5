[String] $content_file = "temp\content.json"
[String] $content = @{
    EmailAddress = "string"
    ID = "string"
    PreferredLanguage = "string"
    Product = "string"
    Source = "string"
    Status = "string"
    Total = 0
 } | ConvertTo-Json | Out-File $content_file

Invoke-RestMethod `
    -Method Post `
    -uri "http://52.232.124.181:8080/v1/order/" `
    -ContentType "application/json" `
    -inFile $content_file

