class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  private
  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    # The only way to get rid of the coach is to tell them what they want to hear
    if your_message == "I am going to work"
      # Coach don't answer anything
      "Great!"
    elsif your_message.end_with?("?") # If you ask the coach somethin
      # Coach amswer is:
      "Silly question, get dressed and go to work!"
    else
      # If you don’t ask the coach something but just tell them something, he replies:
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    # if you shout “I AM GOING TO WORK RIGHT NOW!”, your coach will leave you alone.
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      ""
    elsif your_message == your_message.upcase # If you SHOUT at your coach (CAPS LOCK!)
      # she/he will like it
      "I can feel your motivation! #{coach_answer(your_message)}"

    else
      # if you talk with coach normally we should call coach_answer method
      coach_answer(your_message)
    end
  end

end
