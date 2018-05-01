# Build a method #merge_sort that takes in an array and returns a sorted array, using a recursive merge sort methodology.

def merge_sort(arr)
  return arr if arr.length == 1 #arrays with length of 1 are sorted by default

  middle = arr.length/2
  combine(merge_sort(arr[0...middle]), merge_sort(arr[middle..-1]))
  # "left" is up to BUT NOT INCLUDING the middle (...)

end

def combine(left, right)
  sorted_arr = []

  until left.length == 0 || right.length == 0 do
    sorted_arr << (left.first <= right.first ? left.shift : right.shift)
    #  Shift Removes the first element of self and returns it (shifting all other elements down by one). Returns nil if the array is empty.
  end
  return sorted_arr + left + right
end


a = [8, 15, -5, 9, 23, 45, 10, 16, 40, 3]

puts merge_sort(a)
