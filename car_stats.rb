class CarStats


  def self.calc_top_color(cars)
    @cars = cars

    color_frequency(cars)
    @colors.max_by { |value| @frequency[value] }

  end

  def self.calc_bottom_color(cars)
    @cars = cars

    color_frequency(cars)
    @colors.min_by { |value| @frequency[value] }

  end

  def self.color_frequency(cars)
      @colors = cars.map do |car|
      car.color
    end

    @frequency = @colors.inject(Hash.new(0)) do |key, value|
    key[value] += 1
    key
    end
  end
end


