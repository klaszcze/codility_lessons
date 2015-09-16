def solution(a)
  # write your code in Ruby 2.2
  tab = [0]*(a.length+1)
  for i in 0..a.length-1 do
    if a[i] > 0 && a[i] <= a.length
      tab[a[i]-1] = 1
    end
  end
  tab.index(0)+1
end
