require 'rubygems'
require 'pry-debugger'

module ArrayUtil
  def self.max(array)
      if array.length == 0
        return nil
      elsif array.length == 1
        array.first
      else
        array.sort! {|x,y| y<=>x}
        array.first
      end
  end

  def self.middle_element(array)
    value = (array.length/2)
      if array.length == 0
        return nil
      elsif array.length == 1
        array.first
      elsif array.length % 2 != 0
        array[value.ceil]
      else
        sum = (array[value] + array[value-1])
        avg = sum.fdiv(2)
        avg
      end
  end

  def self.sum_arrays(array1, array2)
    arraySum = []
    i = 0
    if array1.length == 0 && array2.length == 0
      arraySum
    elsif array1.length == 1 && array2.length == 1
      arraySum << array1.first + array2.first
      arraySum
    else
      while i < (array1.length)
        arraySum << array1[i] + array2[i]
        i+=1
      end
      arraySum
    end
  end
end
