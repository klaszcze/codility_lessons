def solution(a)
  right_sum = a.inject(:+) - a[0]
  left_sum = a[0]
  min_diff = (right_sum - left_sum).abs
  1.upto(a.length - 1) do |i|
      right_sum -= a[i]
      left_sum += a[i]
      min_diff = (right_sum - left_sum).abs if (right_sum - left_sum).abs < min_diff
  end
  return min_diff
end