module V1
  class AnswersController < ApplicationController

    before_action :set_question
    before_action :set_answer_question, only: [:show, :update, :destroy]

    # GET /questions/question_id/answers
    def index
      json_response(@question.answers)
    end

    # GET /questions/question_id/answers/1
    def show
      json_response(@answer)
    end

    # POST /questions/question_id/answers
    def create
      @question.answers.create!(answer_params)
      json_response(@question.answers, :created)
    end

    # PATCH/PUT /questions/question_id/answers/1
    def update
      author_verification(current_user, @answer, "update")
      head :no_content
    end

    # DELETE /questions/question_id/answers/1
    def destroy
      author_verification(current_user, @answer, "delete")
      head :no_content
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_question
        @question = Question.find(params[:question_id])
      end

      def set_answer_question
        @answer = @question.answers.find_by!(id: params[:id]) if @question
      end

      # Only allow a trusted parameter "white list" through.
      def answer_params
        @created_by = current_user.id
        params[:created_by] = @created_by.to_s
        params.permit(:body, :created_by)
      end

      # Only enble authors to edit or delete questions
      def author_verification (current_user, answer, action)
        unless current_user.id == answer.created_by.to_i
          return
        end
        if action == "update"
          answer.update(answer_params)
        else
          answer.destroy
        end
      end
  end
end

