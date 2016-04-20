class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|

      t.string "title"
      t.text "content"
      
      
      t.timestamps null: false
    end
  end
end
