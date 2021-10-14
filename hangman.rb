words = []
File.open('words', 'r') do |f1|
    while line = f1.gets
        words.push(line)
    end
end

word = words.sample.split()
puts "O tema é #{word[0]} e possui #{word[1].length} letras."
life = 3
wrongLetter = []
attempt = []
while life > 0 
    puts "Você tem #{life} vidas.Palavra #{attempt}."
    puts "Qual letra você quer falar? Você já tentou #{wrongLetter}"
    try = gets.chomp
    if
       try.length > 1 
       puts "É apenas uma letra por vez!"
    end
    unless word[1].include? try
        puts "Você errou!"
        life = life - 1
        wrongLetter.push(try)
    else
        puts "Você acertou!"
        attempt.insert(word[1].index(try), try )
        attempt.delete(nil)
        if attempt.length == word[1].length
            puts "Você conseguiu a palavra era #{word[1]}"
        break
        end
    end
end