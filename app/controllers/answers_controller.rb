class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    # print @answer
    @answer.user_id = current_user.id
    if @answer.save
      flash[:success] = "Your Post is successful!"
    end
    redirect_to question_path (@answer.question_id)
  end

  private

  def answer_params
    params.require(:answer).permit(:answers_content, :question_id, :user_id)
  end


end
