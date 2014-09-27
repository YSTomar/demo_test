json.array!(@leactures) do |leacture|
  json.extract! leacture, :id, :title, :description, :presentation_id
  json.url leacture_url(leacture, format: :json)
end
