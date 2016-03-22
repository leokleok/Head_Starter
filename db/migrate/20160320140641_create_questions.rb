class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :questions_content
      t.integer :user_id
      t.integer :num_of_views
      t.integer :education_level_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
