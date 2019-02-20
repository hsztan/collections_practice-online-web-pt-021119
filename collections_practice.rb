require "pry"

def sort_array_asc(array)
 array.sort
end

def sort_array_desc(array)
  array.sort {|a, b| b <=> a}
end

def sort_array_char_count(array)
  array.sort {|a, b| a.length <=> b.length}
end

def swap_elements(array)
  holder = array[1]
  array[1] = array[2]
  array[2] = holder
  array
end

def reverse_array(array)
  array.reverse!
end

def kesha_maker(array)
  array.map do |element|
    element[2] = "$"
    element
  end
end

def find_a(array)
  array.select {|element| element.start_with?("a")}
end

def sum_array(array)
  array.inject {|sum, num| binding.pry; sum += num}
end

def add_s(array)
  array.each_with_index {|element, index| element << "s" unless index == 1}
end
