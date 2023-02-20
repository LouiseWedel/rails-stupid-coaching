class QuestionsController < ApplicationController
  def ask
  end

  STOP_MESSAGE = "I am going to work right now!"
  def answer
    user_question = params[:question]
    @coach_answer = nil
    if user_question == STOP_MESSAGE
      @coach_answer = "Great !"
    elsif user_question.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
