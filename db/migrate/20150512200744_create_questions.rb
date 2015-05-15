class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, unique: true
      t.references :topic, index: true, foreign_key: true
      t.text :explanation
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d
      t.string :answer

      t.timestamps null: false
    end
  end
end
