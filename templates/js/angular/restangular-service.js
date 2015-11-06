// ng:restangular-service
// [NG]
// source.js

(function () {
    'use strict';

    angular
        .module('${1:module}')
        .factory('${2:name}', ${2});

    // minification-safe injection
    // make sure to duplicate unquoted names as an argument to ${2} function
    ${2}.\$inject = ['${3:Restangular}'];

    /**
     * @desc
     * @ngInject
     */
    function ${2}($3) {
        return $3.service('${2/(.*)/\L\1\E/i}s');
    }
})();