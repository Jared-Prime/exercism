module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(number)
    @number = number
    protect_zero
  end

  def square_of_sum
    @square_of_sum ||= (1..@number).reduce(:+) ** 2
  end

  def sum_of_squares
    @sum_of_squares ||= (1..@number).reduce 0 do |sum, n|
      sum + n**2
    end
  end

  def difference
    @difference ||= square_of_sum - sum_of_squares
  end

  private

  def protect_zero
    @difference = @sum_of_squares = @square_of_sum = @number if @number.zero?
  end
end
