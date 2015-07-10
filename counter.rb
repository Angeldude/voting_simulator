class Counter
attr_reader :rep, :dem
  def initialize
    @rep = 1
    @dem = 1
  end

  def inc_rep
    @rep += 1
  end

  def inc_dem
    @dem += 1
  end

end

# is candidate really required to visit all voters?
# how to change voted to true
# iterate through list how?
