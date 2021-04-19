class Random
  def self.event(prob)
    rand < prob
  end

  def self.events(count, prob)
    count.times.count{ rand < prob }
  end
end
