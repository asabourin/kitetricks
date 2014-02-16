json.array! @tricks do |trick|
  json.name trick.name
  json.description trick.description
  json.level trick.level_for_rider
end