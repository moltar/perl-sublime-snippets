// ng:factory
// [NG]
// source.js

(function () {
    'use strict';

    angular
        .module('${1:module}')
        .factory('${2:name}', ${2});

    // minification-safe injection
    // make sure to duplicate unquoted names as an argument to ${2} function
    ${2}.\$inject = ['${3:\$routeParams}'];

    /**
     * @desc
     * @ngInject
     */
	function ${2}($3) {
        var service = {
            ${4:func}: ${4:func}
        };

        return service;

        ////////////////

        function ${4:function}() {
            $5
        }
	}
})();