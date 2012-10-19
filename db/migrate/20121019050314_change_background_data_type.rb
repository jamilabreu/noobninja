class ChangeBackgroundDataType < ActiveRecord::Migration
 def change
    change_table :invites do |t|  
      t.change :background, :text, limit: nil 
    end
  end
end
