class AddAlumnToParents < ActiveRecord::Migration[5.0]
  def change
    add_reference :parents, :alumn, foreign_key: true
  end
end
