class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :photo
      t.string :address

      t.timestamps
    end
  end
end
