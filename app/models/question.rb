class Question < ApplicationRecord
  #validation
  validates_presence_of :body, :created_by
end
