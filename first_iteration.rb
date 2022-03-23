require "uri"
require "net/http"
require "json"

url = URI("http://127.0.0.1:3000/power")

http = Net::HTTP.new(url.host, url.port);
request = Net::HTTP::Get.new(url)

response = http.request(request)
body = JSON.parse(response.read_body)

body["data"].each do |app_data|
  puts ""
  puts "Displaying power metrics of app ##{app_data["id"]}"
  puts "Value: ##{app_data["value"]} with #{app_data["accuracy"]} accuracy"
  puts ""
end
