class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :email
      t.string :background
      t.boolean :sensei, default: false
      
      t.timestamps
    end
  end
end
