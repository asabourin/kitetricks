angular.module('app.services', ['ngResource'])

.factory('Tricks', function($resource) {

  return $resource("/api/tricks/:trickId", {trickId: "@trickId"},
    {
        "categories": {'method': 'GET', 'url': '/api/tricks/categories', isArray: true},
        "level": {'method': 'POST', 'url': '/api/tricks/:trickId/level', params: {trickId: "@trickId", rider_id: "@rider_id", level: "@level"}}
    });
});
