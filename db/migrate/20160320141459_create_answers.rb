class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answers_content
      t.integer :user_id
      t.integer :question_id
      t.integer :num_of_votes
      

      t.timestamps null: false
    end
  end
end
