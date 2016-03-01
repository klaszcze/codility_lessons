def solution(array)
  array_slicer = ArraySlicer.new(array)

  [2, 3].each { |length| array_slicer.check_slice_min(length) }
  array_slicer.min_row
end

class ArraySlicer
  attr_reader :min_row

  def initialize(array)
    @array = array
    @min_avg = Float::INFINITY
    @min_row = 0
  end

  def check_slice_min(length)
    @array.each_cons(length).with_index do |con, i|
      new_avg = con.inject(:+) / length.to_f
      @min_avg, @min_row = new_avg, i if new_avg < @min_avg
    end
  end
end