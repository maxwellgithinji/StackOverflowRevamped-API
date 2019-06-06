class Question < ApplicationRecord
  #model association
  has_many :answers, foreign_key: :question_id

  #validation
  validates_presence_of :body, :created_by
end
