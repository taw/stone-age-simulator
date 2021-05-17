class Float
  def clamp01
    if self <= 0
      0.0
    elsif self >= 1
      1.0
    else
      self
    end
  end
end

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
    if weights.is_a?(Array)
      e = weights.sum.to_f
      weights.each_with_index do |w, i|
        return i if event(w / e)
        e -= w
      end
      raise "Random#weighted_choice fail"
    else
      e = weights.values.sum.to_f
      weights.each do |key, w|
        return key if event(w / e)
        e -= w
      end
      raise "Random#weighted_choice fail"
    end
  end
end
