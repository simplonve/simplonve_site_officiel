class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :day
      t.string :month
      t.integer :year
      t.string :title
      t.text :subtitle
      t.text :content

      t.timestamps null: false
    end
  end
end
