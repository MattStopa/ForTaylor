def get_input
  gets.strip
end

# 1 Get a user's name and say "Hello Matt"
puts "Enter your name please:"
name = get_input
puts "Hello #{name}"

# 2. Take the user's name and ask their age. Then say "Hi Matt, your age is 33"
puts "Enter your age please:"
age = get_input
puts "Hi #{name}, your age is #{age}"

# 3. Ask if the person is old enough to drive. If the answer is yes then say "Have a nice Drive"
#    if the answer is no, then say "Oh sorry!"

puts "Are you old enough to drive?:"
answer = get_input
if answer == "yes"
  puts "Have a nice Drive!"
else
  puts "Oh sorry!"
end

# 4. Get the user's bank balance. If less than zero, say "Oh you are in trouble"
#    If greater than zero but less than 100 say "You can buy McDonalds. Yay"
#    If greater than 1000 say "Wow you are rich!!!" (conversion)

# 5. Ask the user how happy they are from 1 to 10. Print out "Happy" between 1 and 10 times
#    based on what they said. (conversion)

# 6. Ask the user how happy they are from 1 to 10. Print out "Happy" between 1 and 10 times
#    based on what they said. ON THE EVEN NUMBERS PRINT "Very Happy" instead (every even number)

# 7. Ask the user for their 3 favorite fruits. (Ask 3 separate times). Create an array from those
#    answers and say "I love bananas" for each one. (bananas obviously changes based off the fruit
#    they chose)





