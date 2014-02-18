
angular.module('app', ['ngRoute', 'ngResource', 'facebook', 'app.services', 'app.controllers', 'ui.bootstrap'])

.config(['$locationProvider', function($locationProvider){
  $locationProvider.html5Mode(true);
}])

.config(['FacebookProvider', function(FacebookProvider) {
     FacebookProvider.init('1408532389399793');
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
