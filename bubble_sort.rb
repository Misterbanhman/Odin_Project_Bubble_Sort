

def bubble_sort(array)
    array.each do |number|

        current_index = array.index(number)
        next_index = array.index(number) + 1
        if array[next_index] == nil
            if check_sorted(array) == false
                bubble_sort(array)
            else
                p array
            end
        elsif number > array[next_index]
            temp1 = number 
            temp2 = array[array.index(number)+1]
            array[current_index] = temp2
            array[next_index] = temp1
        end
    end
end

def check_sorted(array)
    array.each do |number|

        next_index = array.index(number) + 1
        if array[next_index] == nil
            return true
        elsif number > array[next_index]
            return false
        end
    end
end

bubble_sort([4,3,78,2,0,2])