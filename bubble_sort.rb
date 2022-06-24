def is_array_sorted(array)
    array.each_cons(2) do | a, b |
        return false if (a > b)
    end
    true
end

def bubble_sort(array) 
    while !is_array_sorted(array)
        array.each_with_index do | a, idx |
            if (idx + 1 <= array.size - 1) # didn't reach the last element (it's not the last element)
                b = array[idx + 1]         # get the next element
                if (a > b)                 
                    temp = a               
                    array[idx] = b  
                    array[idx + 1] = temp
                end
            end
        end
    end
    array
end

p bubble_sort([1,2,3,4,5,6,7,8,9])
p bubble_sort([1,2,3,4,9,5,6,7,8])
p bubble_sort([4,3,78,2,0,2])