class CreateSubComments < ActiveRecord::Migration
  def change
    create_table :sub_comments do |t|
      t.string :commenter
      t.text :body
      t.references :comment, index: true

      t.timestamps null: false
    end
    add_foreign_key :sub_comments, :comments
  end
end
