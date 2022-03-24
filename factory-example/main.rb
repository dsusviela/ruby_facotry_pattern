require "uri"
require "net/http"
require "json"
require_relative "./classes/metric.rb"

metrics = ["power", "revenues", "downloads", "reviews"]

metrics.each do |metric|
  metric_class = Metric.create_for(metric: metric)
  metric_class.put_information
end
