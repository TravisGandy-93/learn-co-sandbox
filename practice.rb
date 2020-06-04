#default argument assigning
def greeting(name = "Bro")
  puts "Hey jus relax and pace yourself #{name}"
end
greeting

greeting("man! i wont say it a third time chief lol")

def greeting(name="Trav", language="Ruby")
  puts "Wassup, #{name}. You are a gonna be a great #{language} programmer."
end
greeting

greeting("again Mister Big Shot lol")

greeting("one more time El Capitan haha","world running, show stopping, pop lockin, jaw dropping software")

#if statements practice

dog = "thirsty".upcase
 

 
if dog == "hungry"
  puts "Refilling food bowl."
elsif dog == "THIRSTY"
  puts "Refilling water bowl."
else
  puts "Reading newspaper."
end

#wont return nil values because there are no puts
def speak_to_grandma(love)
  
  if love == "i love you grandma!".upcase
    "I LOVE YOU TOO PUMPKIN!"
  elsif love == love.upcase
    "NO, NOT SINCE 1938!"
  else
    "HUH?! SPEAK UP, SONNY!"
  end
end

#Ternary Operators
def unsafe?(speed)
  if speed < 40
    true 
  elsif speed > 60
   true
  else
    false
end
end



def not_safe?(speed)
  
	speed > 60 || speed < 40 ? true : false
end

#Case statements to replace lengthy elsif's 

case name 
 
  when "Alice"
    puts "Hello, Alice!"
  when "The White Rabbit"
    puts "Don't be late, White Rabbit"
  when "The Mad Hatter"
    puts "Welcome to the tea party, Mad Hatter"
  when "The Queen of Hearts"
    puts "Please don't chop off my head!"
  else 
    puts "Whoooo are you?"
end

#Loops

10.times do 
  puts "Hi! Welcome to my very repetitive program"
end

#infinite basic loop
loop do
  puts "I have found the Time Machine!"
end

counter = 0 # Start our counter at 0, we have never run the loop
loop do # Start our loop
  # increment our counter by 1 and set it equal to the sum of its current value, plus 1. 
  counter = counter + 1
 
  # Do Something
  puts "Iteration #{counter} of the loop"
 
  if counter >= 10 # If our counter is 10 or more
    break # Stop the loop
  end
end

age = 7
age += 1
age #=> 8

counter = 0
 
loop do 
  counter += 1
  puts "Iteration #{counter} of the loop"
  if counter >= 10 
    break
  end
end










#Iteration and Abstraction
#With Loop 
basket = ["apple 1","apple 2","apple 3","apple 4","apple 5","apple 6","apple 7","apple 8","apple 9","apple 10"]
 
apples_in_basket = basket.size # Step 1
apples_taken_out = 0 # Step 2
 
loop do # Step 3
    if apples_taken_out < apples_in_basket 
        # Step 4
        puts "Taking out #{basket[apples_taken_out]}"
        apples_taken_out += 1
    else
        # Step 5
        break
    end
end

#With each 
basket = ["apple 1","apple 2","apple 3","apple 4","apple 5","apple 6","apple 7","apple 8","apple 9","apple 10"]
 
# Step 1,2,3,4,5 as one, abstractly
basket.each do |apple|
  puts "Taking out #{apple}"
end

#HASH ITERATION LAB 
def key_for_min_value(name_hash)
  lowest_key = nil
  lowest_value = nil 
  name_hash.each do |key, val|
    if lowest_value == nil || val < lowest_value
      lowest_value = val
      lowest_key = key 
    end
  end
  lowest_key
end
