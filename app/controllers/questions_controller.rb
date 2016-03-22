class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order("created_at DESC")
  end

  def show
    @questions = Question.find(params[:id])
    @answer = Answer.new
    # @answer.user_id = current_user.id
    # if @answer.save
    # redirect_to action: "show"
    # else
    # render action: "new"
    # end
    # print @questions.id
    # @answerlist = Answer.where(:question_id == @questions.id)
    @answerlist = Answer.where(:question_id => @questions.id)
    # print @answerlist.inspect
  end

  def new
    @question = Question.new
    @subjects = Subject.all
    @educationLevels = EducationLevel.all
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    if @question.save
    flash[:success] = "Your Post is successful!"
    redirect_to action: "index"
    else
    render action: "new"
    end

  end

  def destroy
      @question = Question.find(params[:id])
      @question.destroy
      redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :questions_content, :education_level_id, :subject_id)
  end

end
