# Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, 
# is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

# -----

 # Three 1's => 1000 points
 # Three 6's =>  600 points
 # Three 5's =>  500 points
 # Three 4's =>  400 points
 # Three 3's =>  300 points
 # Three 2's =>  200 points
 # One   1   =>  100 points
 # One   5   =>   50 point

# -----

# A single die can only be counted once in each roll. For example, a given "5" can only count as part of 
# a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.

def score( dice )
  num_count = {
    1 => 0, 
    2 => 0,
    3 => 0, 
    4 => 0,
    5 => 0, 
    6 => 0
  }

  total_points = 0
  count_dice_numbers(dice, num_count)
  total_points = calculate_points(num_count, total_points)
end

def count_dice_numbers(dice, num_count)
  dice.each do |number|
    num_count.each do |key, value|
      num_count[key] += 1 if key == number
    end
  end
end

def calculate_points(num_count, total_points)
  num_count.each do |key, value|
    if key == 1
      total_points = add_one_triple_num_points(num_count, key, total_points)
    elsif key == 2
      total_points = add_triple_num_points(num_count, key, total_points)
    elsif key == 3
      total_points = add_triple_num_points(num_count, key, total_points)
    elsif key == 4
      total_points = add_triple_num_points(num_count, key, total_points)
    elsif key == 5
      total_points = add_one_triple_num_points(num_count, key, total_points)
    elsif key == 6
      total_points = add_triple_num_points(num_count, key, total_points)
    end
  end

  total_points
end

# add up the relevant points for a number that occurs at least 3 times in dice array
def add_triple_num_points(num_count, key, total_points)
  if num_count[key] >= 3 
    total_points += 1000 if key == 1
    total_points += ("#{key}" + "00").to_i unless key == 1
    num_count[key] -= 3
  end

  total_points
end

# add up the relevant 1 AND 3 count occurrence points of numbers that add points if they occur
# at least 3 times in the dice array AND every 1 time not included in the 3 count
def add_one_triple_num_points(num_count, key, total_points)
  until num_count[key] == 0
    total_points = add_triple_num_points(num_count, key, total_points)
    if num_count[key] < 3
      total_points += 100 if key == 1
      total_points += 50 if key == 5
      num_count[key] -= 1
    end
  end

  total_points
end

# should return 450
score([2, 4, 4, 5, 4])