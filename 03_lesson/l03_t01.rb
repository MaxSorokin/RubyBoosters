words = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}

require "google/cloud/translate"

# Your Google Cloud Platform project ID
project_id = "translation-01-220716"
key_file = "My Project-cf8c099f9b91.json"

# Instantiates a client
translate = Google::Cloud::Translate.new project: project_id, keyfile: key_file

# The target language
target = "ru"

# Translates some text into Russian
#______________________________________________________________________________

def game (word, length_temp, length, encryped_word, help_word)
    puts ('Мы загадали вам слово, состоящее из #{length} букв. Введите английскую букву в нижнем регистре, чтобы начать отгадывать.')
    puts ("Подсказка: загаданное слово в переводе на русский означает #{help_word}")
    while (length_temp != 0)
        letter = gets
        if (word.include?(letter))
            length_temp -= 1
            puts "Поздравляем! Вы отгадали букву! Осталось еще #{length_temp} букв. Так держать!"
            for i in 0..length-1
                if(word[i] == letter)
                    encryped_word[i] = letter
                end
            end
            puts "Вашe слово: #{encryped_word}"
        end
    end
    if(length_temp == 0)
        puts 'Вы отгадали слово! Поздравляем!'
    end
end

word = words[rand(words.length)]
help_word = translate.translate word, to: target
length = word.length
encryped_word =  '*' * length
length_temp = length
puts 'Добро пожаловать на Поле чудес! Нажмите "1", чтобы начать игру'
input = gets.to_i
if(input == 1)
    game(word, length_temp, length, encryped_word, help_word)
end