class BookKeeping
  VERSION = 2
end

class Raindrops
  CLOUD = {'pling' => 3, 'plang' => 5, 'plong' => 7}.freeze

  class << self
    def test(cloud)
      "#{cloud}?"
    end

    CLOUD.each do |name, number|
      define_method test(name) do |n|
        n % number == 0 ? name.capitalize : ''
      end
    end 

    def convert(balloon)
      rainbarrel = CLOUD.keys.reduce '' do |rainfall, cloud|
        rainfall + send(test(cloud), balloon)
      end

      rainbarrel.empty? ? balloon.to_s : rainbarrel
    end
  end
end
