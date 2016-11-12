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
# return nil if arr.type_of?(Array) == false

def bubblesort(arr)
  return nil if arr.is_a?(Array) == false
  return arr if arr.length <= 1
  0.upto(arr.length - 1) do |i|
    0.upto(arr.length - 2 - i) do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j].to_s > arr[j + 1].to_s
    end
  end
  arr
end
