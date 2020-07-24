file_name = File.open 'file.txt', 'r'

@hh = {}

def add_to_hash word
  if !word.empty?
    word.downcase!

    cnt = @hh[word].to_i
    cnt += 1
    @hh[word] = cnt
  end
end

file_name.each_line do |line|
  arr = line.split (/\s|\n|\.|,/) # \s (white_space), | (or), \n (new string), \ (escape)
  arr.each {|word| add_to_hash(word)}
end   

file_name.close

@hh.each do |k,v|
  puts "#{v} #{k}"
end