require "uri"
require "net/http"
require 'json'
def request(url_requested)   
    url = URI(url_requested)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    JSON.parse(response.read_body)
end
data = request("https://jsonplaceholder.typicode.com/photos")[0..10]
photos = data.map{|x| x['url']}
html = ""
photos.each do |photo|
    html += "<img scr=\"#{photo}\">\n"
end
File.write('output.html',html)
#print html
