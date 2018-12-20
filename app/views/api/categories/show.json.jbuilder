json.id @category.id
json.name @category.name
json.receipts @category.receipts.order(:created_at => :desc).each do |receipt|
  json.id receipt.id
  json.user_id receipt.user_id
  json.category_id receipt.category_id
  json.merchant receipt.merchant
  json.price receipt.price
  json.image receipt.image
  json.policy_exp_date receipt.policy_exp_date
  json.priority receipt.priority
end
