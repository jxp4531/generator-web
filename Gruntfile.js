module.exports = function (grunt) {

    /**
     * 构建目标：
     * 图片优化 雪碧图，通过gopng工具和imagemin实现
     * css压缩合并，通过less和cssmin结合实现
     * js压缩合并混淆，通过requirejs实现
     * css跟js的按需加载，通过模块化实现
     *
     * 图片构建思路：
     * img/统一存放所有图片资源
     * img/temp存放所有美工切图资源，按照是否归于同一张雪碧图，新建文件夹存放切图，如img/temp/common，该文件夹存放common这张雪碧图的所有切图
     * 利用腾讯gopng工具，在线制作雪碧图，并将雪碧图的css放置到less/sprite文件下，以供less模块引用
     * 将在线生成的雪碧图文件，如common.png，放置到img/src文件夹下
     * 利用imagemin插件，将src文件夹下的所有图片，经过优化处理后，放到img/dist文件夹下，在css或html中引用图片时需使用img/dist作为引用路径
     * ==========================================================================================================================
     * css构建思路：
     * 采用less编写css，less文件下的分app、sprite、mod三个文件夹，app文件夹存放css的公共模块定义的less文件，sprite存放每张雪碧图的less文件
     * mod存放每个页面的less文件，最后经过less任务的处理，将mod文件夹里面的less全部编译成css，放到css目录下。最终达到的目的是css目录下仅有
     * bootstrap.css和各个页面的css，如此，每个页面只要引入这两个css即可。
     * 开发环境下：css/bootstrap.css为未压缩过的代码，less编译mod下的less文件时不经过压缩处理
     * 生产环境下：css/bootstrap.css为压缩过的代码，less编译mod下的less文件时会经过压缩处理
     * ==========================================================================================================================
     * js构建思路：
     * 采用requirejs编写js，js/src文件夹存放js代码，该文件夹下分app,lib,mod三个文件夹，app存放公共的模块化代码，lib存放引用的库，mod存放各个页面的js
     * 开发环境下，把bower下载的库拷贝到js/src/lib文件夹里，注意拷贝的是未压缩合并混淆的源代码，本项目相关的js直接在app或mod里面编写，再利用copy任务，将
     * js/src下的所有文件拷贝到js/dist，页面通过js/dist来引用js文件。由于未对库文件及本项目编写的js做过合并压缩混淆处理，所以在开发环境下能够十分方便地
     * 进行调试
     * 生产环境下，需对js/src的文件利用requirejs的优化工具，进行压缩合并和混淆，同时实现按需加载
     *
     * **/

    var imgExts = 'png,jpg,jpeg',
        getRequirejsOpts = function (dist) {
            return {
                optimize: dist ? 'uglify' : 'none',
                appDir: './js/src/',
                dir: './js/dist/',
                baseUrl: './lib',
                paths: {
                    app: '../app',
                    mod: '../mod'
                },
                modules: grunt.file.readJSON("optimize.json"),
                done: function (done, output) {
                    var duplicates = require('rjs-build-analysis').duplicates(output);

                    if (duplicates.length > 0) {
                        grunt.log.subhead('Duplicates found in requirejs build:');
                        grunt.log.warn(duplicates);
                        return done(new Error('r.js built duplicate modules, please check the excludes option.'));
                    }

                    done();
                }
            }
        };

    grunt.initConfig({
            pkg: grunt.file.readJSON('package.json'),
            config: {
                bowerDir: 'bower_components',
                src: {
                    img: 'img/src/',
                    css: 'less/',
                    js: 'js/src/'
                },
                dest: {
                    img: 'img/dist/',
                    css: 'css/',
                    js: 'js/dist/'
                }
            },
            clean: {
                dist: [
                    '<%=config.dest.css %>**',
                    '<%=config.dest.img %>**',
                    '<%=config.src.js %>/lib/**'
                ],
                js: [
                    '<%=config.dest.js %>**'
                ]
            },
            imagemin: {
                dist: {
                    options: {
                        optimizationLevel: 3
                    },
                    files: [
                        {
                            expand: true,
                            cwd: '<%=config.src.img %>',
                            src: ['**/*.{' + imgExts + '}'],
                            dest: '<%=config.dest.img %>'
                        }
                    ]
                }
            },
            cssmin: {
                dist: {
                    expand: true,
                    cwd: '<%=config.dest.css %>',
                    src: '**/*.css',
                    dest: '<%=config.dest.css %>'
                }
            },
            autoprefixer: {
                dist: {
                    expand: true,
                    cwd: '<%=config.dest.css %>',
                    src: '**/*.css',
                    dest: '<%=config.dest.css %>'
                }
            },
            copy: {
                icheck: {
                    expand: true,
                    cwd: '<%=config.bowerDir %>/iCheck/',
                    src: ['icheck.js'],
                    dest: '<%=config.src.js %>lib/'
                },
                transitionjs: {
                    expand: true,
                    cwd: '<%=config.bowerDir %>/bootstrap/js/',
                    src: ['transition.js'],
                    dest: '<%=config.src.js %>lib/'
                },
                jquery: {
                    expand: true,
                    cwd: '<%=config.bowerDir %>/jquery/dist/',
                    src: ['jquery.js'],
                    dest: '<%=config.src.js %>lib/'
                },
                requirejs: {
                    expand: true,
                    cwd: '<%=config.bowerDir %>/requirejs/',
                    src: ['require.js'],
                    dest: '<%=config.src.js %>lib/'
                },
                build_js: {
                    expand: true,
                    cwd: '<%=config.src.js %>',
                    src: ['**/*.js'],
                    dest: '<%=config.dest.js %>'
                },
                iconfont: {
                    expand: true,
                    cwd: '<%=config.src.css %>/app/icon/',
                    src: ['**/*', '!*.less'],
                    dest: '<%=config.dest.css %>'
                }
            },
            less: {
                build: {
                    options: {
                        compress: false
                    },
                    expand: true,
                    cwd: '<%=config.src.css %>/mod/',
                    src: ['**/*.less'],
                    ext: '.css',
                    dest: '<%=config.dest.css %>'
                }
            },
            watch: {
                image: {
                    files: '<%=config.src.img %>**/*.{' + imgExts + '}',
                    tasks: ['imagemin']
                },
                less: {
                    files: '<%=config.src.css %>**/*.less',
                    tasks: ['less:build', 'autoprefixer']
                },
                js: {
                    files: '<%=config.src.js %>**/*.js',
                    tasks: ['copy:build_js']
                },
                iconfont: {
                    files: '<%=config.src.css %>app/icon/**',
                    tasks: ['copy:iconfont']
                }
            },
            requirejs: {
                build: {
                    options: getRequirejsOpts()
                },
                dist: {
                    options: getRequirejsOpts(true)
                }
            }
        }
    );

    grunt.loadNpmTasks('grunt-contrib-imagemin');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-autoprefixer');
    grunt.loadNpmTasks('grunt-contrib-requirejs');

    grunt.registerTask('default', '开发环境构建......', function () {
        grunt.task.run([
            'clean',
            'imagemin',
            'copy',
            'less',
            'autoprefixer',
            'watch'
        ]);
    });

    grunt.registerTask('release', '生产环境构建......', function () {
        grunt.task.run([
            'clean:dist',
            'imagemin',
            'copy',
            'less',
            'autoprefixer',
            'cssmin',
            'clean:js',
            'requirejs:dist'
        ]);
    });

    grunt.registerTask('optimize', 'requirejs优化......', function () {
        grunt.task.run([
            'clean:js',
            'requirejs:build'
        ]);
    });
};