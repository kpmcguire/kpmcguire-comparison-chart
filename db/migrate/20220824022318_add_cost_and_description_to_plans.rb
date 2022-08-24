class AddCostAndDescriptionToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :cost, :string
    add_column :plans, :description, :text
  end
end
