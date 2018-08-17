require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test
  def test_it_exists
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_instance_of Event, trial
  end

  def test_its_name
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal "Curling", trial.name
  end

  def test_its_age
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal [24,30,18,20,41], trial.ages
  end

  def test_max_age
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal 41, trial.max_age
  end

  def test_min_age
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal 18, trial.min_age
  end

  def test_average_age
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal 26.6, trial.average_age
  end

  def test_standard_deviation_age
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal 8.28, trial.standard_deviation_age
  end

  def test_get_sum
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal 133, trial.get_sum(133)
  end

  def test_get_average
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal 26.6, trial.get_average(133)
  end

  def test_get_subtraction
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal [-2.6, 3.4, -8.6, -6.6, 14.4], trial.get_subtraction(26.6)
  end

  def test_get_squared
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal [6.76, 11.56, 73.96, 43.56, 207.36], trial.get_squared([-2.6, 3.4, -8.6, -6.6, 14.4])
  end

  def test_get_sumof_squared
    trial = Event.new("Curling",[24,30,18,20,41])
    assert_equal 343.2, trial.get_sumof_squared([6.76, 11.56, 73.96, 43.56, 207.36])
  end
end
