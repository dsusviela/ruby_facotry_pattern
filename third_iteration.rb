require "uri"
require "net/http"
require "json"

metrics = ["power", "revenues", "downloads", "reviews"]

metrics.each do |metric|
  url = URI("http://127.0.0.1:3000/#{metric}")

  http = Net::HTTP.new(url.host, url.port);
  request = Net::HTTP::Get.new(url)

  response = http.request(request)
  body = JSON.parse(response.read_body)

  body["data"].each do |app_data|
    if metric == "reviews"
      puts ""
      puts "Displaying #{metric} metrics of app ##{app_data["id"]}"
      puts "Positive reviews: ##{app_data["positive_value"]}"
      puts "Negative reviews: ##{app_data["negative_value"]}"
      puts "The accuracy of these metrics is #{app_data["accuracy"]} accuracy"
      puts ""
    else
      puts ""
      puts "Displaying #{metric} metrics of app ##{app_data["id"]}"
      if metric == "downloads"
        puts "Value: ##{app_data["value"]}"
      else
        puts "Value: ##{app_data["value"]} with #{app_data["accuracy"]} accuracy"
      end
      puts ""
    end
  end
end
