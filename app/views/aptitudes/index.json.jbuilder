json.array!(@aptitudes) do |aptitude|
  json.extract! aptitude, :id, :competence, :tag, :mail
  json.url aptitude_url(aptitude, format: :json)
end
