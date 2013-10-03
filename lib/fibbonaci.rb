
# produces a fibbonaci sequence in an array
def fibbonaci_seq(num)
   array = [0]

  num.times do |i|
    if i==0
      array[i] = 1
    elsif i==1
      array[i] = 1
    else
      array[i] = array[i-1] + array[i-2]
    end  
  end

  return array
end

puts fibbonaci_seq(3)
