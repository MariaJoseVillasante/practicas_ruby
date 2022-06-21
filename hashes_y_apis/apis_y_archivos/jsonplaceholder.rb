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
    response.read_body#[0..100]#El rango para no leerlo entero

    results = JSON.parse(response.read_body)
end
request('"https://jsonplaceholder.typicode.com/posts"')
puts results.class
puts results[0]

results.each do |post|
    puts post['userId']
end