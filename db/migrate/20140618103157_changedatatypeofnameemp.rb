class Changedatatypeofnameemp < ActiveRecord::Migration
  def change
    change_column :emps, :name, 'date USING CAST(name AS date)'

  end
end
