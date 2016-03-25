json.array!(@posts) do |post|
  json.extract! post, :id, :title, :conent
  json.url post_url(post, format: :json)
end
