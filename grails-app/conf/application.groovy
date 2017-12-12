

// Added by the Spring Security Core plugin:

grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.mgshop.domains.seguridad.Usuario'
grails.plugin.springsecurity.userLookup.authoriyJoinClassName = 'com.mgshop.domains.seguridad.UsuarioPerfil'
grails.plugin.springsecurity.authority.className = 'com.mgshop.domains.seguridad.Perfil'
grails.plugin.springsecurity.requestMap.className = 'com.mgshop.domains.seguridad.Requestmap'
//grails.plugin.springsecurity.securityConfigType = 'Requestmap'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [

        [pattern: '/',               access: ['IS_AUTHENTICATED_REMEMBERED']],
        [pattern: '/**/',               access: ['permitAll']],
        [pattern: '/error',          access: ['permitAll']],
        [pattern: '/index',          access: ['IS_AUTHENTICATED_REMEMBERED']],
        [pattern: '/index.gsp',      access: ['IS_AUTHENTICATED_REMEMBERED']],
//        [pattern: '/404',      access: ['permitAll']],
//        [pattern: '/500',      access: ['permitAll']],

        [pattern: '/index2',      access: ['IS_AUTHENTICATED_REMEMBERED']],
        [pattern: '/index2.gsp',      access: ['IS_AUTHENTICATED_REMEMBERED']],

        [pattern: '/shutdown',       access: ['permitAll']],
        [pattern: '/assets/**',      access: ['permitAll']],
        [pattern: '/webjars/**',      access: ['permitAll']],
        [pattern: '/**/js/**',       access: ['permitAll']],
        [pattern: '/**/css/**',      access: ['permitAll']],
        [pattern: '/**/images/**',   access: ['permitAll']],
        [pattern: '/**/favicon.ico', access: ['permitAll']],
        [pattern: '/login/*', access: ['permitAll']],

        [pattern: '/**/usuarios/**', access: ['permitAll']],
        [pattern: '/logout/*', access: ['permitAll']],
        [pattern: '/dbconsole/**', access: ['permitAll']],
        [pattern: '/console/**', access: ['ROLE_ADMIN']],
]

//Para que spring security no le da problema a ciertos urls
grails.plugin.springsecurity.filterChain.chainMap = [

        [pattern: '**/API/**', filters: 'none'],


        [pattern: '/assets/**',      filters: 'none'],

        [pattern: '/**/muestra/muestraCaptura/**',       filters: 'none'],

        [pattern: '/**/js/**',       filters: 'none'],
        [pattern: '/**/css/**',      filters: 'none'],
        [pattern: '/**/images/**',   filters: 'none'],
        [pattern: '/**/favicon.ico', filters: 'none'],
        [pattern: '/**',             filters: 'JOINED_FILTERS'],

        [pattern: '/404/**', filters: 'none'],
        [pattern: '/500/**', filters: 'none'],
        [pattern: '/403/**', filters: 'none']



]

