class CreateYoutubes < ActiveRecord::Migration
  def change
    create_table :youtubes do |t|
      t.string :youtube_url
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :youtubes, :articles
  end
end
