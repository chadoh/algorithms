class Image
  def initialize(arr)
    @arr = arr
  end

  def print
    @arr.each do |sub_array|
      puts sub_array.join('')
    end
  end

  def blur!
    @arr
  end
end

# image = Image.new([
#   [0, 0, 0, 0],
#   [0, 1, 0, 0],
#   [0, 0, 0, 1],
#   [0, 0, 0, 0]
# ])
#
# image.print

require "minitest/autorun"

class TestImage < Minitest::Test
  def test_blur
    image = Image.new([
      [0, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 1],
      [0, 0, 0, 0]
    ])

    assert_equal(image.blur!, [
      [0, 1, 0, 0],
      [1, 1, 1, 1],
      [0, 1, 1, 1],
      [0, 0, 0, 1]
    ])
  end
end
