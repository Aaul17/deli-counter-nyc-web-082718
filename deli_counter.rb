def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each_with_index do |name, index|
      current_line += " #{index + 1}. #{name}"
    end
    puts current_line
  end
end

def take_a_number(katz_deli, name)
  position = katz_deli.length + 1
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    serving = "Currently serving #{katz_deli[0]}."
    katz_deli.shift
    puts serving
  end
end
