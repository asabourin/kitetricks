 categories = [
    { name: "Basics", description: "Start with these" },
    { name: "Airstyle", description: "Go high" },
    { name: "Wakestyle", description: "Unhook" },
    { name: "Strapless", description: "Be free" }
  ]

categories.each do |category|
  Category.create(:name => category[:name], :description => category[:description])
end

tricks = [
    { category_id: 0, name: 'Waterstart', position: 1, description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { category_id: 0, name: 'Transition', position: 2, description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { category_id: 0, name: 'Upwind', position: 3, description: 'Everyone likes turtles.' },
    { category_id: 0, name: 'Jump', position: 4, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },

    { category_id: 1, name: 'Backroll', position: 5, description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { category_id: 1, name: 'Frontroll', position: 6, description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { category_id: 1, name: 'One-foot', position: 7, description: 'Everyone likes turtles.' },
    { category_id: 1, name: 'Board-off', position: 8, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },
    { category_id: 1, name: 'Darkslide', position: 9, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },

    { category_id: 2, name: 'Railey', position: 10, description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { category_id: 2, name: 'Backroll', position: 11, description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { category_id: 2, name: 'S-Bend', position: 12, description: 'Everyone likes turtles.' },
    { category_id: 2, name: 'F16', position: 13, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },
    { category_id: 2, name: 'Blind Judge', position: 14, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },
    { category_id: 2, name: 'Backmobe', position: 15, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },

    { category_id: 3, name: 'Jibe', position: 16, description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { category_id: 3, name: 'Tack', position: 17, description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { category_id: 3, name: 'Aerial', position: 18, description: 'Everyone likes turtles.' },
    { category_id: 3, name: 'Bottom-turn', position: 19, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' }
  ]

tricks.each do |trick|
  Trick.create(:name => trick[:name], :description => trick[:description], :category_id => trick[:category_id], :position => trick[:position])
end