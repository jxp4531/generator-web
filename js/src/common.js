

requirejs.config({
    baseUrl: 'js/dist/lib',
    urlArgs: "bust=" + (new Date()).getTime(),
    paths: {
        app: '../app',
        mod: '../mod'
    },
    shim: {
        'transition': ['jquery'],
        'icheck': ['jquery']
    }
});