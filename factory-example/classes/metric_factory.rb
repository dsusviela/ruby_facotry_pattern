require_relative "./downloads"
require_relative "./power"
require_relative "./revenues"
require_relative "./reviews"

class MetricFactory
  def self.put_information(metric)
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

    klass.new.put_information
  end
end
