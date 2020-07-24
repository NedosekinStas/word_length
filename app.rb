file_name = File.open 'file.txt', 'r'

file_name.each_line do |line|
  arr = line.split (/ /)
  puts arr.inspect
end   

f.close