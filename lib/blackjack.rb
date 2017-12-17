def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  display_card_total(deal_card + deal_card)
  return deal_card+deal_card
end

def hit?(num)
  # code hit? here
 prompt_user
 answer = get_user_input
if answer == "h"
 num += deal_card
elsif answer == "s"
  num
else
  invalid_command
  prompt_user
end

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  movve = hit?(display_card_total)
  until  == 22
    puts display_card_total
    puts end_game
  end

end
