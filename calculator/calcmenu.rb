
require_relative 'basic_calculator'
require_relative 'advcalc'

def validate_options(input, options)
  while !options.include? input
    puts "Enter valid option"
    input = gets.chomp
  end
  return input
end


def main_menu
  print "(b)asic, (a)dvanced, (q)uit: "
  menu_input = gets.chomp
  menu_input = validate_options(menu_input, ["b","a","q"])
  if menu_input == "a"
    advcalc
  elsif menu_input == "b"
    basiccalc
  else
    puts 'Goodbye'
  end
end

main_menu
