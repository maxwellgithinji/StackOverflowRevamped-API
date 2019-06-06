class Answer < ApplicationRecord
  #validation
  validates_presence_of :body, :created_by, :question_id
end
