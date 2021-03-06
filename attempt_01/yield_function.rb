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

class YieldFunction
  attr_reader :t1, :y1, :t2, :y2, :ut

  def initialize(t1, y1, t2, y2)
    @t1 = t1
    @y1 = y1
    @t2 = t2
    @y2 = y2
    @ut = (y2-y1) / (t2-t1)
  end

  def call(work)
    res = if work <= t1
      work * y1
    elsif work <= t2
      w2 = work - t1
      work * y1 + ut * (w2+1) * w2 / 2.0
    else
      w2 = t2 - t1
      t2 * y1 + ut * (w2+1) * w2 / 2.0 + (work-t2) * y2
    end
    res.round(6)
  end

  def divide_yield(subwork)
    total_work = subwork.sum.to_f
    total_yield = call(total_work)
    # If nothing extracted, avoid dividing by zero
    if total_yield == 0.0
      subwork.map{ 0 }
    else
      subwork.map{|wi|
        (wi / total_work * total_yield).round(6)
      }
    end
  end

  def marginal_yield(total)
    (call(total+1) - call(total)).round(6)
  end

  # This is what a 1-person tribe would get, a lot from other tribes,
  # so not representative
  def marginal_share(total)
    (call(total+1) * 1.0 / total).round(6)
  end
end
