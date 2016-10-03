class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id, null: false
      t.integer :commenter_id, null: false
      t.text :comment, null: false

      t.timestamps(null: false)
    end
  end
end
