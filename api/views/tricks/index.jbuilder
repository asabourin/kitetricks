json.array! @tricks do |trick|
  json.id trick.id
  json.name trick.name
  json.description trick.description
  json.category_id trick.category_id
  json.position trick.position
  json.level trick.level_for_rider(@rider_id)
end