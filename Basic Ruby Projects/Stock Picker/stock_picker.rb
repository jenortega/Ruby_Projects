stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(an_array)
    i = 0
    to_hash = Hash.new

    while i < an_array.length
        an_array.each  do |num|
            if an_array[i] < num && i < an_array.find_index(num)
                to_hash["#{i}, #{an_array.find_index(num)}"] = num - an_array[i]
            end
        end
        i += 1
    end

    the_max = to_hash.max_by {|k, v| v}

    the_max.to_ary.pop

    return the_max
    
end

puts stock_picker(stock_prices)
# => 1, 4