class RemoveAlumnFromParents < ActiveRecord::Migration[5.0]
  def change
    remove_column :parents, :alumn, :reference
  end
end
