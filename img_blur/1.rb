class Image
  def initialize(arr)
    @arr = arr
  end

  def print
    @arr.each do |sub_array|
      puts sub_array.join('')
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.print
