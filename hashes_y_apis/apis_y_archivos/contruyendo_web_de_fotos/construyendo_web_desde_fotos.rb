require "uri"
require "net/http"
require 'json'
def request(url_requested)   
    url = URI(url_requested)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    https.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request = Net::HTTP::Get.new(url)
    request["cache-control"] = 'no-cache'
    request["postman-token"] = '5f4b1b36-5bcd-4c49-f578-75a752af8fd5'
    response = https.request(request)
    return JSON.parse(response.body)
end
def build_web_page(hash)
    photos = hash.map{|x| x['url']}
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
    File.write('output.html',html)
end 
data = request("https://jsonplaceholder.typicode.com/photos")
build_web_page(data[0..12])
