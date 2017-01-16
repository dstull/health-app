json.extract! call_log, :id, :comments, :member_id, :time_of_call, :user_id, :result_of_call, :pcp_provider_call, :created_at, :updated_at
json.url call_log_url(call_log, format: :json)