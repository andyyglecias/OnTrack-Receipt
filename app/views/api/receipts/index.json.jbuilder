json.array! @receipt.each do |receipt|
  json.id receipt.id
  json.id receipt.category_id
  json.merchant receipt.merchant
  json.price receipt.price
  json.image receipt.image
  json.policy receipt.policy_exp_date
  json.priority receipt.priority
end