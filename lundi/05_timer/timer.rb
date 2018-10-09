def time_string(x)
	second = x % 60
	minute =  (x / 60) % 60
	heure = (x / 60) / 60
	return "#{heure.to_s.rjust(2,'0')}:#{minute.to_s.rjust(2,'0')}:#{second.to_s.rjust(2,'0')}"
end