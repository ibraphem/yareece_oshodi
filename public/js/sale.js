(function() {
  var app = angular.module("tutapos", []);

  app.controller("SearchItemCtrl", [
    "$scope",
    "$http",
    function($scope, $http) {
      $scope.items = [];

      $http.get("api/item").success(function(data) {
        $scope.items = data;
      });
      $scope.saletemp = [];
      $scope.newsaletemp = {};
      $http
        .get("api/saletemp")
        .success(function(data, status, headers, config) {
          $scope.saletemp = data;
        });
      $scope.addSaleTemp = function(item, newsaletemp) {
        $http
          .post("api/saletemp", {
            item_id: item.id,
            item_quantity: item.quantity,
            cost_price: item.cost_price,
            selling_price: item.selling_price
          })
          .success(function(data, status, headers, config) {
            
            $http.get("api/saletemp").success(function(data) {
              $scope.saletemp = data;
            });
          });
      };
      $scope.updateSaleTemp = function(newsaletemp) {
         ////////////console.log(newsaletemp);
         $http.get("api/item/"+ newsaletemp.item_id).success(function(data) {
            item = data;
            item_quantity = item.quantity;
            new_qty       = newsaletemp.quantity;
            qty_diff      = new_qty - item_quantity;
             //window.alert("qty! = "+item.quantity);
             //window.alert("new_qty! = "+new_qty);
                if (new_qty > item_quantity) {
                   window.alert("The required quantity is "+ qty_diff + " unit(s) greater than available stock");
                   newsaletemp.quantity = 1;
                }
                else{
                    $http
                    .put("api/saletemp/" + newsaletemp.id, {
                        quantity: newsaletemp.quantity,
                        total_cost: newsaletemp.item.cost_price * newsaletemp.quantity,
                        total_selling: newsaletemp.item.selling_price * newsaletemp.quantity
                    })
                    .success(function(data, status, headers, config) {});
                }
          }); 
        
      };
     /* $scope.updateSaleTemp = function(newsaletemp) {
         $http
          .put("api/saletemp/" + newsaletemp.id, {
            quantity: newsaletemp.quantity,
            total_cost: newsaletemp.item.cost_price * newsaletemp.quantity,
            total_selling: newsaletemp.item.selling_price * newsaletemp.quantity
          })
          .success(function(data, status, headers, config) {});
      };*/
      $scope.removeSaleTemp = function(id) {
        $http
          .delete("api/saletemp/" + id)
          .success(function(data, status, headers, config) {
            $http.get("api/saletemp").success(function(data) {
              $scope.saletemp = data;
            });
          });
      };
      $scope.sum = function(list) {
        var total = 0;
        angular.forEach(list, function(newsaletemp) {
          total += parseFloat(newsaletemp.selling_price * newsaletemp.quantity);
        });
        return total;
      };
    }
  ]);
})();
