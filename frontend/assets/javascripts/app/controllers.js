angular.module('app.controllers', [])


// A simple controller that fetches a list of data from a service
.controller('HomeCtrl', function($scope, $filter, Tricks) {
  
  $scope.categories = Tricks.categories();
  $scope.tricks = Tricks.query();

  $scope.percentage = function(category_id, level) {
    var category_tricks = $filter('filter')($scope.tricks, {category_id: category_id}).length;
    var level_tricks = $filter('filter')($scope.tricks, {category_id: category_id, level: level}).length;
    return Math.round(100*level_tricks/category_tricks);
  };

});
