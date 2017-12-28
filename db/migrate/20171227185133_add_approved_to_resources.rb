class AddApprovedToResources < ActiveRecord::Migration
  def change
    add_column :resources, :approved, :boolean
  end
end
