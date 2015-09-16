def solution(x, a)
  # write your code in Ruby 2.2
  tab = [0]*x
  for i in 0..a.length-1 do
    if a[i] <= x
      tab[a[i]-1] = 1
      if tab.index(0).nil?
        return i
      end
    end
  end
  return -1
end