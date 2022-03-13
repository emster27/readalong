class CreateLogins < ActiveRecord::Migration[6.0]
  def change
    create_table :logins do |t|
      t.string :useremail
      t.boolean :usertype
      t.string :password
      t.integer :reader_id

      t.timestamps
    end
  end
end
