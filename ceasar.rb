def ceasar(string)
  counter = 0
  arr = ("a".."z").to_a; arr2 = Array.new; temp_arr = Array.new; arr.map.with_index {|x, i| arr2[i] = arr[i - 21]}
  string.downcase.split('').each do |char|
    if char == " "
      temp_arr << " "
    else
      temp_arr << arr2[arr.index("#{char}")]
    end
  end
  return temp_arr.join
end
