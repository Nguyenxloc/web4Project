
let myRoutteApp  = angular.module('myApp', ['ngRoute']);
myRoutteApp.config(function($routeProvider){
    $routeProvider
        .when(
            '/home',
            {
                templateUrl:'views/home.jsp',
                controller: HomeController
            }
        )
        .when(
            '/booking',
            {
                templateUrl:'views/booking.jsp',
                controller: BookingController
            }
        )
        .when(
            '/contact',
            {
                templateUrl:'views/contact.jsp',
                controller: ContactController
            }
        )
        .otherwise(
            {
                redirectTo: '/home',
            }
        )
});