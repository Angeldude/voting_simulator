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

count = Counter.new
if convince and sandy.party.include?("Republican")
  bill.voted = true
  count.inc_rep
else
  bill.voted = true
  count.inc_dem
end
