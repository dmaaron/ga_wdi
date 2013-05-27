def power(first, second)
  first ** second
end

def sqrt(first)
  Math.sqrt(first)
end

def advcalc
  print "(p)ower, (s)qrt: (q)uit to main "
  resp = gets.chomp
  resp = validate_options(resp, ["p", "s","q"])
  if resp == "p"
    print "First number: "
    first_num = gets.chomp
    print "Second number: "
    second_num = gets.chomp
    puts power(first_num, second_num)
  else 
    print "What number?: "
    first_num = gets.chomp
    puts sqrt(first_num)
  end
  main_menu
end
