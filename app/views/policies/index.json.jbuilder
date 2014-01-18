json.array!(@policies) do |policy|
  json.extract! policy, :p_name, :p_ref, :c_name, :c_ref, :scope, :objectives
  json.url policy_url(policy, format: :json)
end
