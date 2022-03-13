class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.integer :page_id
      t.text :recommendations
      t.integer :reader_id

      t.timestamps
    end
  end
end
