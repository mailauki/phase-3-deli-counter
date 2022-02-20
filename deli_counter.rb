katz_deli = []

def line katz_deli
  counter = 0
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    customer_in_line = katz_deli.map do |customer|
      counter = counter + 1
      "#{counter}. #{customer}"
    end
    puts "The line is currently: #{customer_in_line.join(" ")}"
  end
end

def take_a_number(katz_deli, new_customer_name)
  new_number = katz_deli.length + 1
  puts "Welcome, #{new_customer_name}. You are number #{new_number} in line."
  katz_deli << new_customer_name
end

def now_serving katz_deli
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
