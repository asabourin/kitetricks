 categories = [
    { id: 0, name: "Basics", description: "Start with these" },
    { id: 1, name: "Airstyle", description: "Go high" },
    { id: 2, name: "Wakestyle", description: "Unhook" },
    { id: 3, name: "Strapless", description: "Be free" }
  ];

categories.each do |category|
  Category.create(:name => category[:name], :description => category[:description])
end
