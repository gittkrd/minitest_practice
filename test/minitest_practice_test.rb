require 'test_helper'
require 'minitest_practice'

class MinitestPracticeTest < Minitest::Test
#  def test_that_it_has_a_version_number
#    refute_nil ::MinitestPractice::VERSION
#  end

#  def test_it_does_something_useful
#    assert false
#  end

  def setup
    @main = Main.new
  end

  def teardown
    @main = nil
  end

  def test_odd?
    assert_equal true , @main.odd?(1)
    assert_equal true , @main.odd?(3)
    assert_equal false , @main.odd?(2)
    assert_equal false , @main.odd?(4)
    assert_equal true , @main.odd?(2135)
    assert_equal false , @main.odd?(4116)
  end

  def test_check_number?
    assert_equal false, @main.check_number?(1)
    assert_equal false, @main.check_number?(12)
    assert_equal false, @main.check_number?(123)
    assert_equal true, @main.check_number?(1234)
    assert_equal false, @main.check_number?(1235)
    assert_equal false, @main.check_number?('あいうえ')
  end

=begin
  def test_enough_length?
    assert_equal false , @main.enough_length?(12)
    assert_equal true , @main.enough_length?(123)
    assert_equal true , @main.enough_length?(12345678)
    assert_equal false , @main.enough_length?(123456789)
    assert_equal false , @main.enough_length?('あい')
    assert_equal true , @main.enough_length?('あいう')
    assert_equal true , @main.enough_length?('あいうえおかきく')
    assert_equal false , @main.enough_length?('あいうえおかきくけ')
  end


  def test_divide
    assert_equal 500 , @main.divide(1000, 2)
    assert_equal false , @main.divide(1000, 0)
    assert_equal 333 , @main.divide(1000, 3)
  end


  def test_fizz_buzz
    assert_equal 'Fizz' , @main.fizz_buzz(3)
    assert_equal 'Buzz' , @main.fizz_buzz(5)
    assert_equal 'FizzBuzz' , @main.fizz_buzz(15)
    assert_equal 'FizzBuzz' , @main.fizz_buzz(30)
    assert_equal 'Buzz' , @main.fizz_buzz(20)
    assert_equal false , @main.fizz_buzz(1)
    assert_equal false , @main.fizz_buzz(2)
    assert_equal false , @main.fizz_buzz(31)

  end
=end

  def test_sayhello
    assert_output("hello\n"){@main.sayhello}
    assert_output("std capture\n"){puts "std capture" }

    assert_output("123456\n"){puts 123456 }
    assert_output("std capture"){print "std capture" }
    assert_output("std capture\n"){print "std capture\n" }

  end

end
