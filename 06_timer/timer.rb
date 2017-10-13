class Timer
  #write your code here
  attr_reader :seconds
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds=(value)
    @seconds = value
    while @seconds > 60
      @minutes += 1
      @seconds -= 60
      if @minutes > 60 then
        @hours += 1
        @minutes -= 60
      end
    end

  end

  def time_string
    "%.2d" % @hours + ":" + "%.2d" % @minutes + ":" + "%.2d" % @seconds
  end
end
