require "uri"
require "net/http"
require 'json'
def request(url_requested)   
    url = URI(url_requested)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    https.verify_mode = OpenSSL::SSL::VERIFY_PEER#funciona igual sin
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    JSON.parse(response.read_body)
end
prices = request("https://api.coindesk.com/v1/bpi/historical/close.json")
#Se pide obtener los precios y fechas del último período y obtener un arreglo con las fechas con valor menor a 5000usd
#print prices["bpi"]
selected_data = prices["bpi"].select {|k,v| v < 30000}
print selected_data.keys
#opcion2
under_5000 = prices["bpi"].values.select {|x| x < 5000}
dates = under_5000.map {|x| prices.invert[x]}