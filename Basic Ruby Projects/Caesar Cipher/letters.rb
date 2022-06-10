def get_letter(letter, factor)
    #A hash of letters and their assigned numbers
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

    #convert letter to symbol, the_key
    the_key = letter.to_sym
    #new_key = ":w"

    #get value of the_key and add the factor (5)
    the_value = letters[the_key] + factor 
    #letters[:w] = 23 + 5 = 28
    
    if the_value > 26
        the_value = the_value - 26 #28 - 26 = 2
        new_letter = letters.key(the_value) #b
        puts new_letter
    else
        new_letter = letters.key(the_value)
        puts new_letter
    end

end

get_letter("a", 5) #f
get_letter("i", 3) #l
get_letter("o", 6) #u
get_letter("w", 5) #b
get_letter("z", 7) #g
