// ng:route-state
// [NG]
// source.js

// docs: https://github.com/angular-ui/ui-router/wiki
{
    state: '${1:stateName}',
    config: {
        abstract: true,
        templateUrl: '${2:template}',
        url: '/${3:url/:capture}',
        controller: '${4:ControllerName}',
        controllerAs: 'vm'
    }
}