def min (a,b)
    a < b ? a : b
  end
def clock_angle (hour, minute)
  if hour < 0 or minute < 0
    puts "Wrong input"
    return -1
  end
  if hour == 12
    hour = 0
  end
  if minute == 60
    minute = 0
    hour = hour + 1
  end
  hourAngle = 0.5 * (hour * 60 + minute)
  minuteAngle = minute * 6
  clockAngle = (hourAngle - minuteAngle).abs
  return min(360 - clockAngle, clockAngle)
end
# puts clockAngle(1, 45).to_s + " degrees"
# puts clockAngle(3, 30).to_s + " degrees"
# puts clockAngle(9, 15).to_s + " degrees"