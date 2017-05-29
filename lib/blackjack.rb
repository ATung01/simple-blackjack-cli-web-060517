def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = deal_card + deal_card

  display_card_total(total)
  total
  # code #initial_round here
end

def hit?(num)
  prompt_user
  answer = get_user_input
  if answer == "h"
    num += deal_card
  elsif answer != "s"
      invalid_command
  end
  num
  # code hit? here
end

def invalid_command
  puts "Please enter a valid comment"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  new_total = 0
  unless total > 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
  # code runner here
end
