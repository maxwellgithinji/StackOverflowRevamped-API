class QuestionSerializer < ActiveModel::Serializer
  attributes \
    :id,
    :body,
    :created_at,
    :curr_user

  def created_at
    TimeDiffCalc.call(object.created_at)
  end

  def curr_user
    curr_user = User.select(:name).where(
      id: object.created_by.first
        ).pluck(:name)[0]
    curr_user
  end
end