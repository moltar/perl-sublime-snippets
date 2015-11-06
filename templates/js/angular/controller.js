// ng:controller
// [NG]
// source.js

(function () {
    'use strict';

    angular
        .module('${1:module}')
        .controller('${2:Name}Controller', ${2}Controller);

    // minification-safe injection
    // // make sure to duplicate unquoted names as an argument to ${2}Controller function
    ${2}Controller.\$inject = ['${3:\$routeParams}'];

    /**
     * @desc
     * @ngInject
     */
	function ${2}Controller($3) {
		/* jshint validthis: true */
		var vm = this;
        vm.title = '$2';

        init${2}();

        ////////////////

        function init${2}() {
            $4
        }
	}
})();