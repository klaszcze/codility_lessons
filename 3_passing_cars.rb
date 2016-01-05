def solution(a)
  array_size = a.size
  sufflix = [0] * ( array_size + 1)

  array_size.downto(1) do |number|
    sufflix[number - 1] = sufflix[number] + a[number - 1]
  end

  passing = 0
  0.upto(array_size) do |counter|
    passing += sufflix[counter]  if a[counter] == 0
    if passing > 1000000000
      passing = -1
      break
    end
  end
  passing
end