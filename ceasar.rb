def ceasar(string)
  counter = 0
  arr = ("a".."z").to_a; arr2 = Array.new
  arr.map.with_index {|x, i| arr2[i] = arr[i - 21]}
end
