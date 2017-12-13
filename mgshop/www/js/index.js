var myApp;
var $$;
var usuario_id;
var data = {};

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
        $('#link_iniciar_sesion').on('touchend', function (e) {
            e.preventDefault();

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
                        usuario_id = response.id;
                        console.log(usuario_id);
                        setupData();
                    }
                },
                error: function (response) {
                    myApp.alert("Credenciales invalidos...");
                }
            });
        });
    },

    setupLogout: function () {
        $('#link_cerrar_sesion').on('touchend', function (event) {
            event.preventDefault();
            mainView.router.load({ pageName: 'login' });              
        })
    }
};

function setupData() {
    $.ajax({
        url: 'http://192.168.0.114:8080/API/restPedidosRealizados',
        type: "POST",
        method: "POST",
        headers: {
            'Content-Type':'application/json'
        },
        data: JSON.stringify({
            usuario_id: usuario_id
        }),
        contentType: "application/json",
        success: function (response) {
            data = {};
            data = response;

            $("#tabla tbody").remove();
            $('#tabla').append('<tbody></tbody>')

            for(var i = 0; i < data.length; i++) {
                $('#tabla').find('tbody').append('<tr><td>'+data[i].dateCreated+'</td><td>'+data[i].txnId+'</td><td>$ '+data[i].total+'.00</td></tr>');
            }
        },
        error: function (response) {

        }
    });
}

