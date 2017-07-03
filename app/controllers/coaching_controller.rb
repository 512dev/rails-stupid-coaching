class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @answer = "I don't care, get dressed and go to work!"
    if @query.include?('?')
      @answer = "Silly question, get dressed and go to work!"
    elsif @query == "I am going to work right now!" || @query == "I AM GOING TO WORK RIGHT NOW!"
      @answer = ""
    end
    if @query == @query.upcase && @answer != ""
      @answer = "I can feel your motivation! #{@answer}".strip
    end
    @answer
  end

  def ask
  end
end
