// ng:route
// [NG]
// source.js

// requires routerHelperProvider.js
// https://github.com/johnpapa/angular-styleguide#style-y270
(function () {
    'use strict';

    angular
        .module('${1:module}')
        .run(appRun);

    /* @ngInject */
    function appRun(routerHelper) {
        routerHelper.configureStates(getStates());
    }

    /**
     * @desc
     */
    function getStates() {
        return [
            ${2:// include route states here}
        ];
    }
})();