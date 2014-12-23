define(function(require) {

    var router = require('plugins/router'),
        app = require('durandal/app');

    var ViewModel = function () {
        this.router = router;

        this.copyrightYear = new Date().getFullYear();

        this.activate = function () {
            router.map([
                { route: '', title:'Welcome', moduleId: 'viewmodels/welcome', nav: true },
                { route: 'started', title:'Getting Started', moduleId: 'viewmodels/started', nav: true },
                { route: 'download', title:'Download', moduleId: 'viewmodels/download', nav: true },
                { route: 'community', title:'Community', moduleId: 'viewmodels/community', nav: true },
                { route: 'links', title:'Useful Links', moduleId: 'viewmodels/links', nav: true }
            ]).buildNavigationModel();

            return router.activate();
        }

    };

    return new ViewModel(); // singleton
});

//define(['plugins/router', 'durandal/app'], function (router, app) {
//    return {
//        router: router,
//
//        search: function() {
//            //It's really easy to show a message box.
//            //You can add custom options too. Also, it returns a promise for the user's response.
//            app.showMessage('Search not yet implemented...');
//        },
//        activate: function () {
//            router.map([
//                { route: '', title:'Welcome', moduleId: 'viewmodels/welcome', nav: true },
//                { route: 'started', title:'Getting Started', moduleId: 'viewmodels/started', nav: true },
//                { route: 'download', title:'Download', moduleId: 'viewmodels/download', nav: true },
//                { route: 'community', title:'Community', moduleId: 'viewmodels/community', nav: true },
//                { route: 'links', title:'Useful Links', moduleId: 'viewmodels/links', nav: true }
//            ]).buildNavigationModel();
//
//            return router.activate();
//        }
//    };
//});