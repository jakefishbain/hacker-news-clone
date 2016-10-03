class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :author_id, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.string :url, null: false

      t.timestamps(null: false)
    end
  end
end
