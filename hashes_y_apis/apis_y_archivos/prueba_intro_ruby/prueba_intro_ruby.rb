#Crear un método que reciba una url y el api_key y devuelva el hash con los resultados
require "uri"
require "net/http"
require 'json'
def request(api_url, api_key)  
    url = api_url + api_key
    url = URI(url)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    return JSON.parse(response.body)#body#read_body
end
#Crear método que construya una pg 
def build_web_page(hash)
    photos = hash["photos"][0..14].map{|x| x['img_src']}
    html = 
    "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Document</title>
</head>
<body>
<ul>
"
    photos.each do |photo|
        html += "    <li><img src=\"#{photo}\"></li>\n"
    end
    html += "</ul>
</body>
</html>
    "
    File.write('index.html', html)
end 
def photos_count(hash)
    fotos_camara = {}
    #fotos_camara = hash['photos'][0].group_by{|x| x}
    n = hash['photos'].length
    hash["photos"].each do |x|
        print x[0]
    end
    print hash['photos'][0]
    # hash.each do|key, value|
    #     fotos_camara[key] = value.size 
    # end
    return n #fotos_camara
end
api_key = 'D29aCF7XAKL24pbJTodIQtAmYcYstMX1mGatzv1W'
api_url = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key="
data = request(api_url, api_key)
#print data['photos'][0]["camera"]#["name"]
build_web_page(data)
print photos_count(data)
#print data

