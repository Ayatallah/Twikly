class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :photos, :articles
  end
end
