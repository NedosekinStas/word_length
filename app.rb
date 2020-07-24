file_name = File.open 'file.txt', 'r'

hh = {}

def add_to_hash word
  puts word
end

file_name.each_line do |line|
  arr = line.split (/\s|\n|\.|,/) # \s (white_space), | (or), \n (new string), \ (escape)
  arr.each {|word| add_to_hash(word)}
end   

f.close