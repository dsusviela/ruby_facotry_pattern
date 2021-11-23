require "uri"
require "net/http"
require "json"
require_relative "./classes/metric.rb"

metrics = ["power", "revenues", "downloads", "reviews"]

metrics.each do |metric|
  Metric.put_information(metric)
end
