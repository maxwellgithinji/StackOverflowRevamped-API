module V1
  class QuestionsController < ApplicationController
    before_action :set_question, only: %i[show update destroy]

    # GET /questions
    def index
      #get questions from all users
      @questions = Question.all.order(updated_at: :desc)
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
      author_verification(current_user, @question, "update")
      head :no_content
    end

    # DELETE /questions/1
    def destroy
      author_verification(current_user, @question, "delete")
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

    # Only enble authors to edit or delete questions
    def author_verification (current_user, question, action)
      unless current_user.id == question.created_by.to_i
        return
      end
      if action == "update"
        question.update(question_params)
      else
        question.destroy
      end
    end

  end
end
