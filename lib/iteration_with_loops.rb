def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  min_arr = []
  count = 0 
  while count < src.count do
    inner_count = 0 
    arr_min = src[count]{inner_count}.min
    while inner_count < src[count].count do
      if src[count][inner_count] == arr_min
        min_arr << src[count][inner_count]
      end
      inner_count += 1 
    end
    count += 1 
  end
  p min_arr
end