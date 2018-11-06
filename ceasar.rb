def ceasar(string, rotate_by = Time.now.day)
  arr = ("a".."z").to_a; arr2 = Array.new; temp_arr = Array.new; arr.each.with_index {|x, i| arr2[i] = arr[i - (16 + rotate_by)]}
  if string.class == String
    string.downcase.split('').each do |char|
      if char.count("a-z") < 1
        temp_arr << char
      else
        temp_arr << arr2[arr.index("#{char}")]
      end
    end
  end
  if temp_arr.length > 0
    return temp_arr.join
  else
    puts "Please only send messages."
  end
end

def ceasar_reverse(string, rotate_by = 5)
  arr = ("a".."z").to_a; arr2 = Array.new; temp_arr = Array.new; arr.each.with_index {|x, i| arr2[i] = arr[i - (16 + rotate_by)]}
  if string.class == String
    string.downcase.split('').each do |char|
      if char.count("a-z") < 1
        temp_arr << char
      else
        temp_arr << arr[arr2.index("#{char}")]
      end
    end
  end
  if temp_arr.length > 0
    return temp_arr.join
  else
    puts "Please only send messages"
  end
end
