# coding: utf-8
some_var = "false"
another_var = "nil"

item = some_var

puts 'item - ' << item
puts 'some_var - ' << some_var

case item  
    when  "pink elephant"
      puts "Don’t think about the pink elephant!"
    when item.nil?
      puts "Question mark in the method name?"
    when "false"
      puts "Looks like this one should execute"
    else
      puts "I guess nothing matched... But why?"
end
