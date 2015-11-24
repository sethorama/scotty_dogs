json.array!(@puppies) do |puppy|
  json.extract! puppy, :id, :title, :description
  json.url puppy_url(puppy, format: :json)
end
