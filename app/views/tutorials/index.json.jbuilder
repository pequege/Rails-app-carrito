json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :title, :description, :image_url, :price
  json.url tutorial_url(tutorial, format: :json)
end
