angular.module('app.controllers', [])


// A simple controller that fetches a list of data from a service
.controller('HomeCtrl', function($scope, Tricks) {
  $scope.categories = Tricks.categories();
  $scope.tricks = Tricks.index();
});
