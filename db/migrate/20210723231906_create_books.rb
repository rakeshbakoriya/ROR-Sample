class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :author
      t.string :publisher
      t.string :genre
      t.text :description
      
      t.index [:title, :author], name: "index_books_title_and_author_uniqueness", unique: true
      t.timestamps
    end
  end
end
