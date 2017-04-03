class AddAlumnToParent < ActiveRecord::Migration[5.0]
  def change
    add_column :parents, :alumn, :reference
  end
end
