class CreateEquations < ActiveRecord::Migration
  def change
    create_table :equations do |t|
      t.float :param_1
      t.float :param_2
      t.float :param_3
      t.float :param_4

      t.timestamps
    end
  end
end
