#Windows 

$metadataraw=Invoke-WebRequest -Headers @{"Metadata"="true"} -Method GET -Proxy $Null -Uri "http://169.254.169.254/metadata/instance?api-version=2021-01-01"
$metadataraw
$metadataraw.Content
$metadataraw.Content | ConvertFrom-Json | ConvertTo-Json -Depth 6


#Linux

curl -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2020-09-01" | jq
