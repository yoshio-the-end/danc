json.array! @posts do |post|
  json.id post.id
  json.title post.title
  json.image post.image_url
  json.content post.content
  json.address post.address
  json.user_id post.user_id
  json.name post.user.name
  json.date post.created_at.strftime("%Y年%m月%d日")
  json.user_sign_in current_user
end