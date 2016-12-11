class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :review, foreign_key: true
      t.string :content
      t.integer :parent_id
      t.timestamps
    end
  end
end
