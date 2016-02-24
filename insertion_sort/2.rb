def insertionSort(ar)
  e = ar[ar.length - 1]
  (0...ar.length).each do |i|
    if i == ar.length - 1
      ar[0] = e
    else
      ar[ar.length - 1 - i] = ar[ar.length - 2 - i]
      if ar[ar.length - 1 - i] < e
        ar[ar.length - 1 - i] = e
        puts ar.join(' ')
        break
      end
    end
    puts ar.join(' ')
  end
end

count = gets.to_i
ar = gets.strip.split.map(&:to_i)
# count = 10
# ar = [2, 3, 4, 5, 6, 7, 8, 9, 10, 1]
# ar = [2, 4, 6, 8, 3]

insertionSort(ar)

# input:
# 10
# 2 3 4 5 6 7 8 9 10 1
#
# output:
# 2 3 4 5 6 7 8 9 10 10
# 2 3 4 5 6 7 8 9 9 10
# 2 3 4 5 6 7 8 8 9 10
# 2 3 4 5 6 7 7 8 9 10
# 2 3 4 5 6 6 7 8 9 10
# 2 3 4 5 5 6 7 8 9 10
# 2 3 4 4 5 6 7 8 9 10
# 2 3 3 4 5 6 7 8 9 10
# 2 2 3 4 5 6 7 8 9 10
# 1 2 3 4 5 6 7 8 9 10
