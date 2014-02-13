
angular.module('app', ['ngRoute', 'app.services', 'app.controllers', 'ui.bootstrap'])

.config(['$locationProvider', function($locationProvider){
  $locationProvider.html5Mode(true);
}])
.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: 'views/home.html',
        controller: 'HomeCtrl'
      }).
      otherwise({
        redirectTo: '/'
      });
  }]);
