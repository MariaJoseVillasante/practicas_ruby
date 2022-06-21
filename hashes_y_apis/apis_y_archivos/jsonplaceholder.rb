#https://jsonplaceholder.typicode.com/posts
#Buscamos el URL en Postman y copiamos su código para ruby
require "uri"
require "net/http"
#Se agrega
require 'json'
def request(url_requested)   
    url = URI(url_requested)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    JSON.parse(response.read_body)
end
results = request("https://jsonplaceholder.typicode.com/posts")
data = request("https://jsonplaceholder.typicode.com/photos")[0..10]
print data