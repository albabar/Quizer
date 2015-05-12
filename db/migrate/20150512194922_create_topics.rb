class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.references :user, index: true, foreign_key: true
      t.string :summary
      t.text :description
      t.text :prerequisites_detail
      t.references :prerequisites_topic, index: true, foreign_key: true
      t.integer :passmark

      t.timestamps null: false
    end
  end
end
