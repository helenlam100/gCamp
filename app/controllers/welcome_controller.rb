class WelcomeController < ApplicationController
  def home
    @quotes = ["Failure is not an option. Everyone has to succeed.",
      "- Arnold Schwarzeneggar",
      "Your time is limited, so don't waste it living someone else's life.",
      "-Steve Jobs",
      "Better Ingredients, Better Pizza",
      "-Pap John's",]
  end


end

  # def toppings
  #   @toppings = ['sprinkles', 'frosting', 'gummy worms']
  # end
  #
  # def vanilla
  #   toppings
  # end
