class Sieve
  def initialize(maximum)
    @range = (2..maximum).to_a
  end

  def primes
    loop do
      @range = filter(@range.first)
      @range.rotate!

      break if @range.empty? || @range.first == 2
    end

    @range
  end

  def relative_prime?(n, m)
    m % n != 0
  end

  def filter(n)
    @range.select { |m| m == n || relative_prime?(n, m) }
  end
end
