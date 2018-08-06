# create a name
def start
  puts "What is your name?"
  print "> "
  user_name = $stdin.gets.chomp

  puts "The year is 1930. You, #{user_name}, are an Andalusian shepherd on your way to a nearby town where you normally barter and trade."
  puts "Lately you've had recurring dreams you believe to be prophetic."
  puts "Should you investigate these dreams or pay no mind to them?"
  print "> "
  choice = $stdin.gets.chomp.downcase

  if choice.include? "mind"
    the_king
  elsif choice.include? "investigate"
    fortune_teller
  else
    puts "Anger, resentment and jelousy doesn't change the heart of others.  It only changes yours."
    start
  end
end

def fortune_teller
  # what shall you pay with
  puts "You decide to ask a Romani fortune teller in the town about it's meaning and explain the dreams you've been having."
  puts "The fortune teller takes your hands and studies them carefully. She agrees to interpret your dreams but for a price."
  puts "The only valuable posessions you have are the sheep, a book, and three ancient Spanish gold coins your father gave you a time ago."
  at_what_price
end

def at_what_price
  puts "What will you pay with?"
  print "> "
  payment = $stdin.gets.chomp.downcase

  if payment.include? "sheep"
    puts "Sheep do not interest her."
    at_what_price
  elsif payment.include? "book"
    puts "The fortune teller cannot read the language the book is written in."
    at_what_price
  elsif payment.include? "coins"
    puts "The fortune teller interprets the dream as a prophecy telling you that you will discover treasure at the Egyption pyramids."
    puts "For her payment, she does not want the Spanish coins and says you can keep them, instead she wants one tenth of the treasure you will find."
    puts " "
    the_king
  end
end

def the_king
  puts "Later that day, while reading your book and sipping some of your water in the town square, an old man sits by you."
  puts "The old man, tired and thirsty, asks what book you are reading and if he can have a sip of your water."
  puts "Do you indulge the old man?"
  print "> "
  indulge = $stdin.gets.chomp.downcase

  if indulge.include? "yes"
    puts "The old man inspects the book and sips some of the water you offered."
    puts "He says, \"This book is important but irritating because it teaches the world's greatest lie.\""
    puts "Which is that, at a certain point in our lives, we lose control of what's happening to us, and our lives become controlled by fate."
  elsif indulge.include? "no"
    game_over("Dissapointed, the old man takes his leave.")
    start
  else
    puts "yes or no"
    the_king
  end
end









def game_over(why)
  puts why, "Turn your obstacles into opportunities and your problems into possibilities."
  exit(0)
end

start
