class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :body, :created_by, :question_id
end
