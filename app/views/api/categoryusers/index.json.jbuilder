json.array! @categoryuser.each do |categoryuser|
  json.user categoryuser.user_id
  json.category categoryuser.category_id
  json.spending_limit categoryuser.spending_cap
end