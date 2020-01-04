
var jsCore = {

    showErrorModal : function (title, message) {
        $('#modal-danger').find('.modal-title').text(title);
        $('#modal-danger').find('.modal-body').text(message);
        $('#modal-danger').modal({ backdrop: true });
    }
    ,
    showWarnModal : function (title, message, callback) {
        $('#modal-warning').find('.modal-title').text(title);
        $('#modal-warning').find('.modal-body').text(message);
        $('#modal-warning').modal({ backdrop: true });
        callback();
    }
    ,
    showInfoModal : function showInfoModal(title, message) {
        $('#modal-info').find('.modal-title').text(title);
        $('#modal-info').find('.modal-body').text(message);
        $('#modal-info').modal({ backdrop: true });
    }
    ,
    showSuccessModal : function showSuccessModal(title, message) {
        $('#modal-success').find('.modal-title').text(title);
        $('#modal-success').find('.modal-body').text(message);
        $('#modal-success').modal({ backdrop: true });
    }
    ,
    FlagOK : 1,
    FlagError : -1,
    FlagNo : 0
    ,
    Url : ''
    ,
    bootBoxConfirmDeleteOptions : {
        message: "Sin mensaje cargado",
        title: "Confirmar",
        onEscape: function () { },
        closeButton: false,
        className: "modal-message modal-danger",
        buttons: {
            "Cancelar": {
                className: "btn-default",
                callback: function () { }
            },
            success: {
                label: "Eliminar",
                className: "btn-danger",
                callback: function () { }
            }
        }
    },
    bootBoxConfirmOptions: {
        message: "Sin mensaje cargado",
        title: "Confirmar",
        onEscape: function () { },
        closeButton: false,
        className: "modal-message modal-info",
        buttons: {
            "Cancelar": {
                className: "btn-default",
                callback: function () { }
            },
            success: {
                label: "Guardar",
                className: "btn-primary",
                callback: function () { }
            }
        }
    }
};

$("#alert_icon").click(function () {

    //Ir en busca de los TR que deben cambiarse a notificado
    var nItems = $('.item_alert');
    var alertList = '';
    if (nItems != null)
    {
        for (var i = 0; i < nItems.length; i++)
        {
            alertList += 'idAlert=' + nItems[i].getAttribute('id');
            if (i + 1 < nItems.length) alertList += '&';
        }
    }
    $.ajax({    
        url: '/Alerts/MarkAlertNotificatedAjax?' + alertList,
        datatype: "html",
        type: "POST",
        success: function (_result) {
            var _objr = JSON.parse(_result);
            switch (_objr.Flag) {
                case jsCore.FlagError:
                    jsCore.showErrorModal("Error", _objr.ErrorDescription);
                    break;
                case jsCore.FlagNo:
                    //jqInputs[0].select();
                    jsCore.showWarnModal("Validación", _objr.ErrorDescription, function () {  });
                    return;
                    break;
                default:
                    break;
            }
        }
    });

});



