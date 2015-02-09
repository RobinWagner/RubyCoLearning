# Go to your ruby colearning warmup exercises folder
# Once there create a folder and name it warmup-005
# Inside this folder create two files: one titled warmup-005.rb and the other
# warmup-005_spec.rb

# To get yourself into the test-first habit, first copy the tests in
# https://github.com/gustavoguimaraes/ruby-colearning-warmup-exercises/blob/master/warmup-005/warmup-005_spec.rb
# and add to your warm-005_spec.rb. Write an additional test to it.
# You can use the test that is already written as a reference.

# Your task is to create a "dice roller bucket". See README.md

#Push your code to github.

def roll_die(sides)
  {
    sides: sides, # number of sides
    face: 1 + rand(sides)   # a random number between 1 and sides (inclusive)
  }
end

def roll_bucket(dice_sides)
  puts "On the table:"
  dice_sides.each do |s|
    on_the_table(s)
  end
end

def on_the_table(rolled_dice)
  puts "Your #{rolled_dice[:sides]} sided die shows the value of #{rolled_dice[:face]}."
end

# In a loop, ask the user for the dice sides

def instructions
  puts "Create as many dice as you want"
  puts "A die should have a minimum of 4 sides"
end

@sides = []

instructions

while true
  puts "How many sides?"
  sides = gets.chomp.to_i
  break if sides == 0
  random = roll_die(sides)
  @sides << random
end

roll_bucket(@sides)
