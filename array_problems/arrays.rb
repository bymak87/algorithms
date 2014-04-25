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
  end

  def self.sum_arrays(array1, array2)
  end
end
