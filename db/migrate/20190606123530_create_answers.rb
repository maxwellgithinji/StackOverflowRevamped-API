class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :body
      t.string :created_by
      t.string :question_id

      t.timestamps
    end
  end
end
