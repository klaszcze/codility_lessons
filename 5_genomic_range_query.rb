LETTERS = { 'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4 }

def solution(s, p, q)
  size = s.size
  prefix_sums = Hash.new { |h, k| h[k] = [0] * size }
  keys.each do |letter|
    for i in 1..size
      prefix_sums[letter][i] = prefix_sums[letter][i - 1]
      prefix_sums[letter][i] += 1 if s[i-1] == letter
    end
  end

  output = []
  p.zip(q).each do |from, to|
    keys.each do |letter|
      if prefix_sums[letter][from] != prefix_sums[letter][to+1]
        output << LETTERS[letter]
        break
      end
    end
  end
  output
end

def keys
  LETTERS.keys
end