class QuestionsController < ApplicationController
before_action :authenticate_user!, :except => [:index]
  def index
    @questions = Question.all.order("created_at DESC")

  end

  def show
    @questions = Question.find(params[:id])
    @answer = Answer.new
    @answerlist = Answer.where(:question_id => @questions.id)

  end

  def new
    @user = User.find(current_user.id)
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
    #   if request.original_url == questions_path
    #   redirect_to questions_path
    # end
    redirect_to :back
  end

  # def destroy
  #     @question = Question.find(params[:id])
  #     @question.destroy
  #
  #     redirect_to  :back
  #   end



  private

  def question_params
    params.require(:question).permit(:title, :questions_content, :education_level_id, :subject_id)
  end

end
