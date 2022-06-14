dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Method: Substrings - Using the array "dictionary", find how many substrings one can find using strings
def substrings(strings, dictionary)
    an_array = Array.new
    results = Hash.new

    dictionary.each do |term|
        an_array.push(strings.downcase.scan(term))
    end

    an_array = an_array.compact.flatten

    results = an_array.reduce(Hash.new(0)) do |the_hash, the_term|
        the_hash[the_term] += 1
        the_hash
    end

    return results

end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}

