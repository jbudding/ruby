#!/usr/bin/ruby -w
# encoding : utf-8
 
# assign each value in %w[ ] to an array element in 'week'
week = %w[ mon tue wed thu fri sat sun ]
 
# methods are declared with the 'def' keyword
# params are written as a comma separated list after the method name,
# or inside parenthesis, 
def arrayCycle array
  
  # element is an instance variable.
  # blocks are identified with a pair of 'do' 'end' keywords,
  # or a pair of curly braces '{' '}' for higher precedence.
  for element in array do
    
    puts "#{element}\n"
    
  end
 
end
 
arrayCycle week
