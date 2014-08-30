json.array!(@luteins) do |lutein|
  json.extract! lutein, :id, :name, :description, :picture, :commend
  json.url lutein_url(lutein, format: :json)
end
