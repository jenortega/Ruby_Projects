letters = {
    :a => 1,
    :b => 2,
    :c => 3,
    :d => 4,
    :e => 5,
    :f => 6,
    :g => 7,
    :h => 8,
    :i => 9,
    :j => 10,
    :k => 11,
    :l => 12,
    :m => 13,
    :n => 14,
    :o => 15,
    :p => 16,
    :q => 17,
    :r => 18,
    :s => 19,
    :t => 20,
    :u => 21,
    :v => 22,
    :w => 23,
    :x => 24,
    :y => 25,
    :z => 26
}

# Method: Character Cipher - Using the hash "letters" and factor number, change a character (letter) into its cipher
def character_cipher(hash, char, factor)
    num_value = hash[char.to_sym] + factor

    if num_value > 26      
        num_value = num_value - 26
        cipher_char = hash.key(num_value)
    else
        cipher_char = hash.key(num_value)
    end

    return cipher_char
end

#Method: Ceasar Cipher - Using the hash "letters" and factor number, change string (sentence) into its cipher
#Exclude certain characters such as "!", " ", ",", ".", "-"
#Take into account capital letters
def caesar_cipher(hash, string, factor)
    char = ["!", " ", ",", ".", "-"]
    
    final_string = Array.new
    
    string.each_char do |chr|
        if chr =~ /#{char}/
            final_string.push(chr)
        elsif chr =~ /[[:upper:]]/
            chr = chr.downcase

            cipher_char = character_cipher(hash, chr, factor)
            final_string.push(cipher_char.upcase)
        else
            cipher_char = character_cipher(hash, chr, factor)
            final_string.push(cipher_char)
        end
    end

    return final_string.join("")
end

puts caesar_cipher(letters, "What a string!", 5) 
#Returns => Bmfy f xywnsl!
puts caesar_cipher(letters, "I love New York City!!", 3) 
#Returns => "L oryh Qhz Brun Flwb!!"
