require "uri"
require "net/http"
require "json"

url = URI("https://od-api.oxforddictionaries.com:443/api/v2/entries/en/ace?strictMatch=false")
https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true
request = Net::HTTP::Get.new(url)
request["Accept"] = "application/json"
request["app_id"] = "47036004"
request["app_key"] = "ebb8ae447c94425a5b6453e8549ed5e6"
response = https.request(request)
#result = JSON.parse response.body
puts response.body
