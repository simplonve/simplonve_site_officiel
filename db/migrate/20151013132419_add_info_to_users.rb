class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :title, :string 
    add_column :users, :image, :string 
    add_column :users, :tags, :string 
    add_column :users, :desc, :string 
    add_column :users, :linkedin, :string 
    add_column :users, :twitter, :string 
    add_column :users, :github, :string
    add_column :users, :online, :boolean
  end
end

