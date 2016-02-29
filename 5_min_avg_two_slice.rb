def solution(array)

  array_size = array.size

  prefix_sums = [0] * (array_size + 1)

  1.upto(array_size) do |number|
    prefix_sums[number] = prefix_sums[number - 1] + array[number - 1]
  end


  min_avg = Float::INFINITY
  min_row = 0
  array.each.with_index do |row, index|
    puts index
    (index + 2).upto(array_size) do |counter|
      beg = ( index > 0 ? prefix_sums[index - 2] : 0 )
      new_avg = ( prefix_sums[counter] - beg ).to_f / (counter - index)
      puts "+++++++"
      puts "#{prefix_sums[counter]}, #{beg}"
      if new_avg < min_avg
        min_avg = new_avg
        min_row = index
        puts "#{min_avg}, #{min_row}"
      end
    end
  end
  min_row
end