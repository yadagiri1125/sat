class CreateEmp1s < ActiveRecord::Migration
  def change
    create_table :emp1s do |t|
      t.string :name1

      t.timestamps
    end
  end
end
