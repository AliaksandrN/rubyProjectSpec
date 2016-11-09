# def bubblesort1(arr)
#  for i in (arr.length - 1).downto(0)
#    for j in (arr.length - 1).downto(0)
#      cmp = arr[i] <=> arr[j]
#      if cmp == 1
#        arr[i], arr[j] = arr[j], arr[i]
#      end
#    end
#  end
#  arr
# end

def bubblesort(arr)
  return arr if arr.length <= 1
  0.upto(arr.length - 1) do |i|
    0.upto(arr.length - 2 - i) do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
  arr
end
