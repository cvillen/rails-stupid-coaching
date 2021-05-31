class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # if message "I am goint to work", asnwer = Great!
    # if message has "?", answer = Silly question, get dressed and go to work!.
    # Otherwise, answer = I don't care, get dressed and go to work!
    @question = params[:questions]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question.downcase == 'I am going to work!'
      ''
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
