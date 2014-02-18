angular.module('app.controllers', [])


// A simple controller that fetches a list of data from a service
.controller('HomeCtrl', function($scope, $filter, Tricks) {
  
  $scope.categories = Tricks.categories();
  $scope.tricks = Tricks.query({rider_id:1});

  $scope.percentage = function(category_id, level) {
    var category_tricks = $filter('filter')($scope.tricks, {category_id: category_id}).length;
    var level_tricks = $filter('filter')($scope.tricks, {category_id: category_id, level: level}).length;
    return Math.round(100*level_tricks/category_tricks);
  };

  $scope.updateTrickLevel = function(trick) {
    Tricks.level({trickId:trick.id, rider_id:1, level:trick.level})
  }

  $scope.trickColor = function(trick) {
    var classes = ['danger', 'warning', 'success']
    return classes[trick.level]
  }

})

.controller('authenticationCtrl', ['$scope', 'Facebook', function($scope, Facebook) {

  $scope.getLoginStatus();

  // Here, usually you should watch for when Facebook is ready and loaded
  $scope.$watch(function() {
    return Facebook.isReady(); // This is for convenience, to notify if Facebook is loaded and ready to go.
  }, function(newVal) {
    $scope.facebookReady = true; // You might want to use this to disable/show/hide buttons and else
  });

  // From now and on you can use the Facebook service just as Facebook api says
  // Take into account that you will need $scope.$apply when being inside Facebook functions scope and not angular
  $scope.login = function() {
    Facebook.login(function(response) {
    });
  };

  $scope.getLoginStatus = function() {
    Facebook.getLoginStatus(function(response) {
      if(response.status == 'connected') {
        $scope.$apply(function() {
          $scope.loggedIn = true;
        });
      }
      else {
        $scope.$apply(function() {
          $scope.loggedIn = false;
        });
      }
    })
  };

    $scope.me = function() {
      Facebook.api('/me', function(response) {
        $scope.$apply(function() {
          // Here you could re-check for user status (just in case)
          $scope.user = response;
        });
      });
    };
}]);
