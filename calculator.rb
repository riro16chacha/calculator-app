def calculate(num1, num2, operator)
    case operator
    when '+'
      result = num1 + num2
    when '-'
      result = num1 - num2
    when '*'
      result = num1 * num2
    when '/'
      if num2 != 0
        result = num1.to_f / num2
      else
        puts "Error: Division by zero is not allowed."
        return nil
      end
    else
      puts "Error: Invalid operator."
      return nil
    end
  
    result
  end
  
  def get_number(prompt)
    print prompt
    gets.chomp.to_f
  end
  
  def get_operator
    print "Enter the operator (+, -, *, /): "
    gets.chomp
  end
  
  puts "Welcome to the Calculator App!"
  
  num1 = get_number("Enter the first number: ")
  num2 = get_number("Enter the second number: ")
  operator = get_operator
  
  result = calculate(num1, num2, operator)
  
  if result
    puts "Result: #{result}"
  else
    puts "Calculation failed. Please check your inputs and try again."
  end
  