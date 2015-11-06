// ng:filter
// [NG]
// source.js

(function () {
    'use strict';

    angular
        .module('${1:module}')
        .filter('${2:filter}', ${2});

    /**
     * @desc
     */
    function ${2}() {
        return ${2:filter}Filter;

        ////////////////

        function ${2:filter}Filter(${3:params}) {
            return ${3:params};
        }
    }
})();