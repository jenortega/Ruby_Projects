# Method: Bubble Sort - Using an array of numbers, place the array's numbers in order
def bubble_sort(num_array)
    i = 0

    while i < num_array.length
        if num_array[i] == nil || num_array[i+1] == nil
            break
        elsif num_array[i] < num_array[i+1]
            num_array[i]
            num_array[i+1]
        elsif num_array[i] > num_array[i+1]
            hold = num_array[i+1]
            num_array[i+1] = num_array[i]
            num_array[i] = hold
            i = -1
        end
        i += 1
    end

    return num_array

end

p bubble_sort([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78]

p bubble_sort([45,62,23,6,18])
# => [6, 18, 23, 45, 62]
