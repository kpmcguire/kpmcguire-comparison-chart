class Company < ApplicationRecord
  # SUBSCRIPTION_PLAN_OPTIONS = ['small', 'medium', 'large']
  # validates_inclusion_of :subscription_plan, :in => SUBSCRIPTION_PLAN_OPTIONS
  
  belongs_to :plan
  

end
