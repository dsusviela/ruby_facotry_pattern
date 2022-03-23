class Metric
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
