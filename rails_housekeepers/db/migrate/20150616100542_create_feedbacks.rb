class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :comments
      t.integer :rating
      t.references :reviewable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
