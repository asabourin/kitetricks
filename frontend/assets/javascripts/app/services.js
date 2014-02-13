angular.module('app.services', [])

.factory('Tricks', function() {

  var categories = [
    { id: 0, name: "Basics", description: "Start with these" },
    { id: 1, name: "Airstyle", description: "Go high" },
    { id: 2, name: "Wakestyle", description: "Unhook" },
    { id: 3, name: "Strapless", description: "Be free" }
  ];

  var tricks = [
    { id: 0, category_id: 0, name: 'Waterstart', level: '2', description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { id: 1, category_id: 0, name: 'Transition', level: '2', description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { id: 2, category_id: 0, name: 'Upwind', level: '2', description: 'Everyone likes turtles.' },
    { id: 3, category_id: 0, name: 'Jump', level: '2', description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },

    { id: 4, category_id: 1, name: 'Backroll', level: '1', description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { id: 5, category_id: 1, name: 'Frontroll', level: '1', description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { id: 6, category_id: 1, name: 'One-foot', level: '1', description: 'Everyone likes turtles.' },
    { id: 7, category_id: 1, name: 'Board-off', level: '1', description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },
    { id: 16, category_id: 1, name: 'Darkslide', level: '1', description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },

    { id: 8, category_id: 2, name: 'Railey', description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { id: 9, category_id: 2, name: 'Backroll', description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { id: 10, category_id: 2, name: 'S-Bend', description: 'Everyone likes turtles.' },
    { id: 11, category_id: 2, name: 'F16', description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },
    { id: 17, category_id: 2, name: 'Blind Judge', description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },
    { id: 18, category_id: 2, name: 'Backmobe', description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' },

    { id: 12, category_id: 3, name: 'Jibe', level: '0', description: 'Furry little creatures. Obsessed with plotting assassination, but never following through on it.' },
    { id: 13, category_id: 3, name: 'Tack', level: '0', description: 'Lovable. Loyal almost to a fault. Smarter than they let on.' },
    { id: 14, category_id: 3, name: 'Aerial', level: '0', description: 'Everyone likes turtles.' },
    { id: 15, category_id: 3, name: 'Bottom-turn', level: '0', description: 'An advanced pet. Needs millions of gallons of salt water. Will happily eat you.' }
  ];

  return {
    index: function() {
      return tricks;
    },
    get: function(trickId) {
      // Simple index lookup
      return tricks[trickId];
    },
    categories: function() {
      return categories;
    }
  }
});
