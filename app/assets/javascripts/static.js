var app = angular.module('calc', []);

app.controller('mainCtrl', function ($scope) {
    $scope.stats = {
        investment: 0,
        expected: 0,
        real: 0
    };

    var compute = function () {
        $scope.stats.expected = Math.round(0.3 * $scope.stats.investment*100)/100;
        $scope.stats.real =  Math.round(actual_yield * $scope.stats.investment*100)/100;
    };

    $scope.$watch('stats.investment', compute);
});