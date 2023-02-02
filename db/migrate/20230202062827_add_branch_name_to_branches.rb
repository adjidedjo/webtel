class AddBranchNameToBranches < ActiveRecord::Migration[7.0]
  def change
    add_column :branches, :branch_name, :string
  end
end
