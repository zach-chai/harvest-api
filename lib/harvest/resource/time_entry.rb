module Harvest
  module Resource
    class TimeEntry < Base
      attributes  :id,
                  :spent_date,
                  :user,
                  :user_assignment,
                  :client,
                  :project,
                  :task,
                  :task_assignment,
                  :external_reference,
                  :invoice,
                  :hours,
                  :notes,
                  :is_locked,
                  :locked_reason,
                  :is_closed,
                  :is_billed,
                  :timer_started_at,
                  :started_time,
                  :ended_time,
                  :is_running,
                  :billable,
                  :budgeted,
                  :billable_rate,
                  :cost_rate,
                  :created_at,
                  :updated_at

    end
  end
end
