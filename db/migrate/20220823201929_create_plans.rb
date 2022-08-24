class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :title
      t.text :reporting_storage
      t.text :no_of_administrators
      t.text :billing
      t.text :one_year_price_lock
      t.text :billing_data_export
      t.text :automated_invoices_by_projects
      t.text :subprojects
      t.text :hipaa_baa
      t.text :media_storage
      t.text :rtmp_out
      t.text :reseller_tax_agreement
      t.text :call_throughout
      t.text :dedicated_ip
      t.text :additional_incremental_cps

      t.timestamps
    end
  end
end
