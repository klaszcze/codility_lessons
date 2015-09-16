def solution(a)
  # write your code in Ruby 2.2
  unless a.max == a.length
    return 0
  end
  tab = [0]*a.length
  for i in 0..a.length-1 do
    if tab[a[i]-1] == 0
      tab[a[i]-1] = 1
    else
      return 0
    end
  end
  return 1
end
