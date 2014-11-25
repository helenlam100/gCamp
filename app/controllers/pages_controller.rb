class PagesController < ApplicationController
  def terms

  end

  def about

  end

  def faqs
    first_paragraph = Faq.new("What is gCamp?", "gCamp is an awesome tool that is going to change your life. gCamp
    is your one stop shop to organize all your tasks and documents.
    You'll also be able to track comments that you and others make.
    gCamp may eventually replace all need for paper and pens in the
    entire world. Well, maybe not, but it's going to be pretty cool.")
    second_paragraph = Faq.new("How do I join gCamp?", "Right now, gCamp is still in production. So, there is not a sign up page open to the public, yet! Your best option
    is to become super best friends with a gCamp developer. They can be found
    hanging around gSchool during the day and hitting the hottest clubs at night.")
    third_paragraph = Faq.new("When will gCamp be finished?", "gCamp is a work in progress. That being said, it should be fully
    functional by December 2014. Functional, but our developers are
    going to continue to improve the sight for the foreseeable future.
    Check in daily for new features and awesome functionality. It's
    going to blow your mind. Organization is only (well, will only) be a
    click away. Amazing!")
    @paragraphs = [first_paragraph, second_paragraph, third_paragraph]
  end
end



# def home
#   first_quote = Quote.new("Failure is not an option. Everyone has to succeed.", "-Arnold Schwarzeneggar")
#   second_quote = Quote.new("Your time is limited, so don't waste it living someone else's life.", "-Steve Jobs")
#   third_quote = Quote.new("Better Ingredients, Better Pizza", "-Pap John's")
#   @quotes = [first_quote, second_quote, third_quote]
# # end
#
#
