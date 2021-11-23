class Metric; end

class Power < Metric
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
      puts "Displaying power metrics of app ##{app_data["id"]}"
      puts "Value: ##{app_data["value"]} with #{app_data["accuracy"]} accuracy"
      puts ""
    end
  end
end
