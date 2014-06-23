class Changedatatypeofnameemp1 < ActiveRecord::Migration
  def change
    change_column :emp1s, :name1, 'date USING CAST(name1 AS date)'
  end
end
