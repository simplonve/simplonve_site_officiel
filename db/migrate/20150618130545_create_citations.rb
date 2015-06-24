class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.text :citation
      t.string :auteur

      t.timestamps null: false
    end
  end
end
