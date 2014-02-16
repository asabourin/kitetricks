Category.select.delete

@category_basics = Category.create(:name => 'Basics', :description => "Start with these")
@category_airstyle = Category.create(:name => 'Airstyle', :description => "Go high")
@category_wakestyle = Category.create(:name => 'Wakestyle', :description => "Unhook")
@category_strapless = Category.create(:name => 'Strapless', :description => "Be free")

Trick.select.delete

tricks = [
    { category_id: @category_basics.id, name: 'Waterstart', position: 1, description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { category_id: @category_basics.id, name: 'Transition', position: 2, description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { category_id: @category_basics.id, name: 'Upwind', position: 3, description: 'Everyone likes turtles.' },
    { category_id: @category_basics.id, name: 'Jump', position: 4, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },

    { category_id: @category_airstyle.id, name: 'Backroll', position: 5, description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { category_id: @category_airstyle.id, name: 'Frontroll', position: 6, description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { category_id: @category_airstyle.id, name: 'One-foot', position: 7, description: 'Everyone likes turtles.' },
    { category_id: @category_airstyle.id, name: 'Board-off', position: 8, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },
    { category_id: @category_airstyle.id, name: 'Darkslide', position: 9, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },

    { category_id: @category_wakestyle.id, name: 'Railey', position: 10, description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { category_id: @category_wakestyle.id, name: 'Backroll', position: 11, description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { category_id: @category_wakestyle.id, name: 'S-Bend', position: 12, description: 'Everyone likes turtles.' },
    { category_id: @category_wakestyle.id, name: 'F16', position: 13, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },
    { category_id: @category_wakestyle.id, name: 'Blind Judge', position: 14, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },
    { category_id: @category_wakestyle.id, name: 'Backmobe', position: 15, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },

    { category_id: @category_strapless.id, name: 'Jibe', position: 16, description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { category_id: @category_strapless.id, name: 'Tack', position: 17, description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { category_id: @category_strapless.id, name: 'Aerial', position: 18, description: 'Everyone likes turtles.' },
    { category_id: @category_strapless.id, name: 'Bottom-turn', position: 19, description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' }
  ]

tricks.each do |trick|
  Trick.create(:name => trick[:name], :description => trick[:description], :category_id => trick[:category_id], :position => trick[:position])
end