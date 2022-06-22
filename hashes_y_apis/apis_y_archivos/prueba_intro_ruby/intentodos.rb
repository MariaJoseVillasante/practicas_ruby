require "uri"
require "net/http"
require 'json'

#Crear un método que reciba una url y el api_key y devuelva el hash con los resultados
def request(api,key)
    url = URI(api+key)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    response.read_body
    return JSON.parse(response.read_body)
end 
key ="D29aCF7XAKL24pbJTodIQtAmYcYstMX1mGatzv1W"
api = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key="
dato = request(api,key)
imagenes = dato["photos"][0..14].map do |image|
    puts image["img_src"]
end 

#print ((dato['photos'])[0])["img_src"]