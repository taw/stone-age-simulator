class Random
  def self.event(prob)
    rand < prob
  end

  def self.events(count, prob)
    count.times.count{ rand < prob }
  end

  # weights must be >= 0
  # can fail due to float rounding issues
  def self.weighted_choice(weights)
    e = weights.sum.to_f
    weights.each_with_index do |w, i|
      return i if event(w / e)
      e -= w
    end
    raise "Random#weighted_choice fail"
  end
end
