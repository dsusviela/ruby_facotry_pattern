require "uri"
require "net/http"
require "json"
require_relative "./classes/metric_factory.rb"

metrics = ["power", "revenues", "downloads", "reviews"]

metrics.each do |metric|
  metric_class = MetricFactory.create_for(metric: metric)
  metric_class.put_information
end
