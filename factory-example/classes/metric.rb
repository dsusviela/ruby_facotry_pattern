require_relative "./downloads"
require_relative "./power"
require_relative "./revenues"
require_relative "./reviews"

class Metric
  def self.create_for(metric:)
    klass = if metric == "downloads"
      Downloads
    elsif metric == "power"
      Power
    elsif metric == "revenues"
      Revenues
    elsif metric == "reviews"
      Reviews
    else
      raise RuntimeError
    end

    klass.new
  end

  def initialize
    raise NotImplementedError
  end

  def fetch_information
    http = Net::HTTP.new(url.host, url.port);
    request = Net::HTTP::Get.new(url)

    request = Net::HTTP::Get.new(url)

    response = http.request(request)
    JSON.parse(response.read_body)
  end

  def put_information
  end

  def url
  end
end
