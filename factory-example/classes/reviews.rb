require_relative "./metric"

class Reviews < Metric
  def initialize
  end

  def url
    URI("http://127.0.0.1:3000/downloads")
  end

  def fetch_information
    super
  end

  def put_information
    fetch_information["data"].each do |app_data|
      puts ""
      puts "Displaying reviews metrics of app ##{app_data["id"]}"
      puts "Positive reviews: ##{app_data["positive_value"]}"
      puts "Negative reviews: ##{app_data["negative_value"]}"
      puts "The accuracy of these metrics is #{app_data["accuracy"]} accuracy"
      puts ""
    end
  end
end
