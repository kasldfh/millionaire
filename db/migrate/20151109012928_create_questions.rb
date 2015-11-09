class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.text :answer_a
      t.text :answer_b
      t.text :answer_c
      t.text :answer_d

      t.timestamps
    end
  end
end
