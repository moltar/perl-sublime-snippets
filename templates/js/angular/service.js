// ng:service
// [NG]
// source.js

(function () {
    'use strict';

    angular
        .module('${1:module}')
        .service('${2:Service}', ${2});

    // minification-safe injection
    // make sure to duplicate unquoted names as an argument to ${2} function
    ${2}.\$inject = ['${3:\$routeParams}'];

    /**
     * @desc
     * @ngInject
     */
    function ${2}($3) {
        this.${4:func} = ${4:func};

        ////////////////

        function ${4:function}() {
            $5
        }
    }
})();