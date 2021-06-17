class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :description
      t.string :answers, array = true, default = []
      t.boolean :multiple_correct_answers
      t.string :correct_answers, array = true, default = []
      t.string :correct_answer
      t.string :explanation
      t.string :tip
      t.string :tags, array = true, default = []
      t.string :category
      t.string :difficulty

      t.timestamps
    end
  end
end
