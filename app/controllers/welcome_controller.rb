class WelcomeController < ApplicationController

  def home
    first_quote = Quote.new("Failure is not an option. Everyone has to succeed.", "-Arnold Schwarzeneggar")
    second_quote = Quote.new("Your time is limited, so don't waste it living someone else's life.", "-Steve Jobs")
    third_quote = Quote.new("Better Ingredients, Better Pizza", "-Pap John's")
    @quotes = [first_quote, second_quote, third_quote]
  end
  
end
