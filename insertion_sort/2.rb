def insertion_sort_single(ar)
  e = ar[-1]
  new_array = ar.dup
  last_index = new_array.length - 1

  (0...new_array.length).each do |i|
    if i == last_index
      new_array[0] = e
    else
      new_array[last_index - i] = new_array[last_index - 1 - i]
      if new_array[last_index - i] < e
        new_array[last_index - i] = e
        break
      end
    end
  end

  new_array
end

def insertionSort(ar, output = method(:puts))
  output.call(ar.join(' ')) and return if ar.length < 2
  (1...ar.length).each do |sub|
    ar[0..sub] = insertion_sort_single(ar[0..sub])
    output.call ar.join(' ')
  end
end

# count = gets.to_i
# ar = gets.strip.split.map(&:to_i)

# insertionSort(ar)

require "minitest/autorun"

class Test < Minitest::Test
  def test_default
    ar = %w(1 4 3 5 6 2).map(&:to_i)
    result = []

    insertionSort(ar, result.method(:<<))

    assert_equal(
      result,
      [
        "1 4 3 5 6 2",
        "1 3 4 5 6 2",
        "1 3 4 5 6 2",
        "1 3 4 5 6 2",
        "1 2 3 4 5 6",
      ]
    )
  end

  def test_tricky
    ar = %w(6 5 4 3 2 1).map(&:to_i)
    result = []

    insertionSort(ar, result.method(:<<))

    assert_equal(
      result,
      [
        "5 6 4 3 2 1",
        "4 5 6 3 2 1",
        "3 4 5 6 2 1",
        "2 3 4 5 6 1",
        "1 2 3 4 5 6",
      ]
    )
  end

  def test_short
    ar = %w(1).map(&:to_i)
    result = []

    insertionSort(ar, result.method(:<<))

    assert_equal(
      result,
      [
        "1",
      ]
    )
  end
end
