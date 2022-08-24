class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.integer :subscription_plan

      t.timestamps
    end
  end
end
