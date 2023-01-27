class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :department_id
      t.bigint :ext
      t.integer :line_id

      t.timestamps
    end
  end
end
