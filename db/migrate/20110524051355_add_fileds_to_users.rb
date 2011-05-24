class AddFiledsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :avatar, :string
    add_column :users, :avatar_file_name, :string
    add_column :users, :avatar_content_type, :string
    add_column :users, :avatar_file_size, :integer
  end

  def self.down
        add_column :users, :avatar
    add_column :users, :avatar_file_name
    add_column :users, :avatar_content_type
    add_column :users, :avatar_file_size
  end
end
