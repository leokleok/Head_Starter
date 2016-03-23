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

  def upvote
    @answer = Answer.find(params[:id])
    @answer.upvote_by current_user
    redirect_to :back
  end

  def downvote
  @answer = Answer.find(params[:id])
  @answer.downvote_by current_user
  redirect_to :back
end

  private

  def answer_params
    params.require(:answer).permit(:answers_content, :question_id, :user_id)
  end


end
