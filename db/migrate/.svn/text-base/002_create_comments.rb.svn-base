class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.column :comment, :string, :default => ""
      t.column :email, :string, :default => ""
      t.column :name, :string, :default => ""
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
