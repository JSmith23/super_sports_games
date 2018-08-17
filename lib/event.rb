ages = [24,30,18,20,41]

class Event
  attr_reader :name,
              :ages
  def initialize(name,ages=[])
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    average = @ages.sum.to_f / @ages.length
    average.round(2)
  end

  def standard_deviation_age
    input = @ages
    sum = get_sum(input)
    average = get_average(sum)
    subtract = get_subtraction(average)
    squared = get_squared(subtract)
    sum_squared = get_sumof_squared(squared)
    result = sum_squared / @ages.length
    Math.sqrt(result).round(2)

  end

  def get_sum(ages)
    @ages.sum
  end

  def get_average(get_sum)
    average = get_sum.to_f / @ages.length
    return average
  end

  def get_subtraction(get_average)
    @ages.map do |x|
      x -= get_average
      x.round(2)
    end
  end

  def get_squared(get_subtraction)
    squared = get_subtraction.map do |x|
      x * x
    end
    return squared.map do |x|
      x.round(2)
    end
  end

  def get_sumof_squared(get_squared)
    get_squared.sum
  end
end

trial = Event.new("Curling",ages)
puts trial.standard_deviation_age
