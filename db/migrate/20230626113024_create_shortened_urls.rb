class CreateShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.text :original_url
      t.string :short_url
      t.string :sanitize_url
      t.belongs_to :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
