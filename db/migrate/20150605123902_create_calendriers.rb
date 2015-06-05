class CreateCalendriers < ActiveRecord::Migration
  def change
  	create_table :calendriers do |t|
  		t.string :nom
  		t.string :prenom
  		t.string :email
  		t.string :telephone
  		t.date   :date
  		t.text   :description
      	t.timestamps null: false
  	end
  end
end
