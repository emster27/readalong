class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :image
      t.text :writer_name
      t.text :content

      t.timestamps
    end
  end
end
