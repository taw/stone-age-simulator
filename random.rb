def random_event(prob)
  rand < prob
end

def random_events(count, prob)
  count.times.count{ rand < prob }
end
