require "minitest_practice/version"

#module MinitestPractice
  class Main
    def odd?(n)
      if n % 2 === 1 then 
        return true
      else
        return false
      end
    end

    def check_number?(n)
      if /^[1-9]\d{3}$/ =~ n.to_s && n % 2 === 0 then
        return true
      else
        return false
      end
    end

    def enough_length?(n)
      if n.to_s.length >= 3 && n.to_s.length <= 8 then
        return true
      else
        return false
      end
    end

    def divide(n, m)
      if m === 0 then
        return false
      else
        i = n / m 
        return i
      end
    end

    def fizz_buzz(n)
      if n % 15 === 0 then
        return 'FizzBuzz'
      elsif n % 5 === 0 then
        return 'Buzz'
      elsif n % 3 === 0 then
        return 'Fizz'
      else
        return false
      end

    end

    def sayhello
      puts 'hello'
#       asseret_output("std capture\n"){puts "hello"}
    end

  end

#end
