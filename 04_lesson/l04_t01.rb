arr = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}
puts 'input the amount of letters'
amount = gets
puts 'input letters'
for i in 0..amount
    letters[i] = gets
end

word = ''

for i in 0..arr.length
    if (arr[i])
end
puts word