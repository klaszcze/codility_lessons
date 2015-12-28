def solution(a, b, k)
  mod_a = a % k
  div = b - a + mod_a
  counter = (div.to_f / k).floor
  counter += 1 if mod_a == 0
  counter
end