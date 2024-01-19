class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.string :title
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.timestamps
    end
  end
end
