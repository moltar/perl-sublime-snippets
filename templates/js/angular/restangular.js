// ng:restangular
// [NG]
// source.js

(function () {
    'use strict';

    angular
        .module('${1:module}')
        .factory('${2:name}', ${2});

    // minification-safe injection
    // make sure to duplicate unquoted names as an argument to ${2} function
    ${2}.\$inject = ['Restangular'];

    /**
     * @desc
     * @ngInject
     */
    function ${2}(Restangular) {
        return Restangular.withConfig(function(RestangularConfigurer) {
            RestangularConfigurer.setBaseUrl('${3:http://api.url}');

            // unwrap data, if it's wrapped into an container element
            RestangularConfigurer.setResponseExtractor(function(response, operation) {
                if (operation === 'getList') {
                    var newResponse = response.data;
                    newResponse.meta = response.meta;
                    newResponse.error = response.error;
                    return newResponse;
                }

                return response;
            });
        });
    }
})();