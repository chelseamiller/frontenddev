var include = /^vendor|^bower_components/;
var exclude = /^bower_components\/handlebars/;  // loaded by the handlebars-brunch plugin

exports.config = {
    paths: {
        app: 'app'
    },
    files: {
        javascripts: {
            defaultExtension: "js",
            joinTo: {
                "javascripts/app.js": /^app/
            },
            order: {
                before: [
                    'bower_components/jquery/dist/jquery.js',
                    'bower_components/underscore/underscore.js',
                    "bower_components/bootstrap/dist/js/bootstrap.js",
                ]
            }
        },
        stylesheets: {
            defaultExtension: "styl",
            joinTo: "stylesheets/app.css",
            order: {
                before: [
                    'bower_components/bootstrap/dist/css/bootstrap.css',
                    'bower_components/bootstrap/dist/css/bootstrap-theme.css',
                    'bower_components/font-awesome/css/font-awesome.css'
                ]
            }
        },

    },

    plugins: {
        coffeescript: {
            bare: true
        }
    },

    modules: {
        wrapper: false,
        definition: false
    },
    server: {
        port: 8080,
        run: true
    }
};