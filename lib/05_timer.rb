def time_string(seconds)
  hours = seconds / 3600
  minutes = (seconds % 3600) / 60
  seconds = (seconds % 3600) % 60
  format("%02d:%02d:%02d", hours, minutes, seconds)
end
