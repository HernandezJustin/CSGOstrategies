(function() {
  "use strict";
  angular.module("app").controller("strategiesCtrl", ['$scope', '$http', '$timeout', function($scope, $http, $timeout) {
    $scope.queriedStratHolder = [];
    $scope.queriedStrats = [];
    $scope.mapNames = ["Dust 2", "Inferno", "Office", "Cache", "Nuke", "Overpass"];
    $scope.teamNames = ["CT", "T"];

    $scope.loadStrats = function(){
      $http.get("/api/v1/strategies.json").then(function(response){
        $scope.tStrats = response.data.tStrats;
        $scope.ctStrats = response.data.ctStrats;
        setTimeout(function(){
          document.getElementById("generate_btn").disabled = false;
          document.getElementById("map_names").disabled = false;
          document.getElementById("team_names").disabled = false;
          $scope.repopulateStrats();
        }, 1000);
      });
    };

    $scope.findStrat = function(){
      if($scope.queriedStrats.length > 0){
        $scope.shownStrat = $scope.queriedStrats.splice(Math.floor(Math.random() * $scope.queriedStrats.length), 1);
        $scope.queriedStratHolder.push($scope.shownStrat);
      }else{
        $scope.repopulateStrats();
        $scope.findStrat();
      }
      // console.log($scope.shownStrat);
    };

    $scope.repopulateStrats = function(){
      if($scope.teams === 'T'){
        $scope.tStrats.forEach(function(strat){
          if(strat.map_name === $scope.maps)
            $scope.queriedStrats.push(strat);
        });
      }else{
        $scope.ctStrats.forEach(function(strat){
          if(strat.map_name === $scope.maps)
            $scope.queriedStrats.push(strat);
        });
      }
      $scope.queriedStratHolder = [];
    };

  }]);
}());
