class CreateMicroposts < ActiveRecord::Migration
  def self.up
    create_table :microposts do |t|
      t.integer :user_id
      t.string :title
      t.string :content
      t.string :references

      t.timestamps
    end
    add_index :microposts, :user_id
  end
  
  def self.down
    drop_table :microposts
  end
end
