var myApp;
var $$;

var app = {
    
    initialize: function() {
        this.bindEvents();
    },
    
    bindEvents: function() {
        document.addEventListener('deviceready', this.onDeviceReady, false);
    },
    
    onDeviceReady: function() {
       app.setupFramework7();
       app.setupLogin();
       app.setupLogout();
    },

    setupFramework7: function () {
        console.info("Initializating framework7...")
        myApp = new Framework7({
            material: true,
            swipePanel: 'left'
        });

        mainView = myApp.addView('.view-main', {
            domCache: true
        });

        mainView.router.load({ pageName: 'login' });

        $$ = Dom7;
    },

    setupLogin: function () {
        $('#link_iniciar_sesion').on('touchend', function () {
            $('#link_iniciar_sesion').on('touchend', function () {
                $.ajax({
                    url: 'http://192.168.0.114:8080/API/restLogin',
                    type: "POST",
                    method: "POST",
                    headers: {
                        'Content-Type':'application/json'
                    },
                    data: JSON.stringify($('#login_form').serializeObject()),
                    contentType: "application/json",
                    success: function (response) {
                        if (response !== null || response !== undefined) {
                            mainView.router.load({ pageName: 'content' });
                        }
                    },
                    error: function (response) {
                        myApp.alert("Credenciales invalidos...");
                    }
                });
            });
        })
    },

    setupLogout: function () {
        $('#link_cerrar_sesion').on('touchend', function () {
            mainView.router.load({ pageName: 'login' });              
        })
    }
};
