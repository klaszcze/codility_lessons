def solution(n, a)
  # write your code in Ruby 2.2
  counter_array = [0]*n
  max_counter = 0
  changed = 0
  a.each do |value|
    if value <= n
      counter_array[value - 1] += 1
      max_counter = counter_array[value - 1] if counter_array[value - 1] > max_counter
      changed = 1
    elsif value == n + 1
      counter_array = [max_counter]*n if changed == 1
    end
  end
  counter_array
end