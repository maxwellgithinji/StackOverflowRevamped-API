class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show update destroy]

  # GET /questions
  def index
    #get questions from all users
    @questions = current_user.questions
    json_response(@questions)
  end

  # GET /questions/1
  def show
    json_response(@question)
  end

  # POST /questions
  def create
    # create questions belonging to current user
    @question = current_user.questions.create!(question_params)
    json_response(@question, :created)
  end

  # PATCH/PUT /questions/1
  def update
    @question.update(question_params)
    head :no_content
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_params
      params.permit(:body)
    end
end
