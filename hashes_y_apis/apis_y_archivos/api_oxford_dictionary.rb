#Crear clave en: https://developer.oxforddictionaries.com/
api_key = ARGV[0]
api_id = ARGV[1]
require "uri"
require "net/http"
#require 'json'
def request(url_requested)   
    url = URI(url_requested)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    https.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request = Net::HTTP::Get.new(url)
    #request["Accept"] = "application/json"
    request['app_id'] = api_id
    request['app_key'] = api_key
    response = https.request(request)
    return JSON.parse(response.body)#read_body
end
word = "test"
api_url = "https://od-api.oxforddictionaries.com:443/api/v1/entries/en/#{word}"
#print request("https://od-api.oxforddictionaries.com:443/api/v1/entries/en/#{word}")
result = request(api_url)
print result['results'][0]['lexicalEntries'][0]['entries'][0]['senses'][0]['definitions']
