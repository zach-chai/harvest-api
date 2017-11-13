module Harvest
  module Resource
    class User < Base
      attributes :id,
                 :first_name,
                 :last_name,
                 :email,
                 :telephone,
                 :timezone,
                 :has_access_to_all_future_projects,
                 :is_contractor,
                 :is_admin,
                 :is_project_manager,
                 :can_see_rates,
                 :can_create_projects,
                 :can_create_invoices,
                 :is_active,
                 :weekly_capacity,
                 :default_hourly_rate,
                 :cost_rate,
                 :roles,
                 :avatar_url,
                 :created_at,
                 :updated_at
    end
  end
end
