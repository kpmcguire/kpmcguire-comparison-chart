json.extract! plan, :id, :title, :reporting_storage, :no_of_administrators, :billing, :one_year_price_lock, :billing_data_export, :automated_invoices_by_projects, :subprojects, :hipaa_baa, :media_storage, :rtmp_out, :reseller_tax_agreement, :call_throughout, :dedicated_ip, :additional_incremental_cps, :created_at, :updated_at
json.url plan_url(plan, format: :json)
