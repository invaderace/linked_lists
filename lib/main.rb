# frozen_string_literal: true

require_relative 'linked_list.rb'

my_list = LinkedList.new
p my_list.size
puts

my_list.prepend('one')
p my_list.size
puts

my_list.append('two')
p my_list.size
puts

my_list.append('three')
p my_list.size
puts

my_list.append(4)
p my_list.size
puts

my_list.append(['5'])
p my_list.size
puts

my_list.prepend('0')
p my_list.size
puts

p my_list
puts
p my_list.to_s

puts my_list.contains?('three')
puts
p my_list
puts
p my_list.to_s
