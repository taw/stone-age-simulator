require "forwardable"

class Counter
  include Enumerable
  extend Forwardable

  def initialize(a_hash=nil)
    @data = Hash.new(0)
    if a_hash
      a_hash.each do |k, v|
        @data[k] += v
      end
    end
  end

  def_delegators :@data, :[], :[]=, :each, :inspect, :to_s

  def +(other)
    result = Counter.new
    each{|k,v| result[k] += v}
    other.each{|k,v| result[k] += v}
    result
  end
end
