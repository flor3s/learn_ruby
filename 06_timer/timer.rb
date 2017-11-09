class Timer
  def initialize
  	@sec = 0
  end

  def seconds 
  	@sec
  end

  def seconds=(s)
  	@sec += s
  end

  def time_string
  	seconds = @sec % 60
  	minutes = seconds != 0 ? @sec / 60 : 0
    hours = minutes != 0 ? minutes / 60 : 0
    minutes = minutes % 60 if minutes > 60

    time_arr = [hours, minutes, seconds]

    result = time_arr.map do |unit|
    	if unit.to_s.length == 1
    		"0" + unit.to_s
    	else
    		unit.to_s
    	end
    end

    result.join(":")
  end
end
