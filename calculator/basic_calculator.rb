def simple_calculate(resp, first, second)
  case resp
  when "a"
    first + second
  when "s"
    first - second
  when "m"
    first * second
  when "d"
    first / second
  when "q"
    main_menu
  end
end

def basiccalc
  print "(a)dd, (s)ubtract, (m)ultiple, (d)ivide:, (q)uit to main: "
  resp = gets.chomp
  resp = validate_options(resp, ["a", "s", "m", "d", "q"])
  print "First number: "
  first_num = gets.chomp
  print "Second number: "
  second_num = gets.chomp
  puts simple_calculate(resp, first_num, second_num)
  main_menu
end
