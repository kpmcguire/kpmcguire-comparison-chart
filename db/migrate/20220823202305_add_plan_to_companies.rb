class AddPlanToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_reference :companies, :plan, foreign_key: true
  end
end
