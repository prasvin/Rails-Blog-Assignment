class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :name
      t.text :remark
      t.integer :blog_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
