class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :author_id
      t.integer :book_id

      t.timestamps
    end
    add_index :relationships, :author_id
    add_index :relationships, :book_id
    add_index :relationships, [:author_id, :book_id], unique: true
  end
end
