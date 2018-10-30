arr = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}
length = gets
i = 0
while arr[i].length != length
    word = arr[i]
    i+=1
end
puts word