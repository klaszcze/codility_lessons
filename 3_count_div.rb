def solution(a, b, k)
  mod_a = a % k
  div = b - a
  range = mod_a == 0 ? div + 1 : div + mod_a
  (range.to_f / k).floor
end