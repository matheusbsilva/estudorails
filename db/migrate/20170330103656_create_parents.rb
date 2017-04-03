class CreateParents < ActiveRecord::Migration[5.0]
  def change
    create_table :parents do |t|
      t.integer :cpf_parent
      t.string :name_parent
      t.string :address_parent
      t.string :phone_parent
      t.string :sex_parent
      t.string :rg_parent

      t.timestamps
    end
  end
end
