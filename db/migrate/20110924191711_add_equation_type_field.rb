class AddEquationTypeField < ActiveRecord::Migration
  def up
    add_column :equations, :equation_type, :integer
  end

  def down
    remove_column :equations, :equation_type
  end
end
