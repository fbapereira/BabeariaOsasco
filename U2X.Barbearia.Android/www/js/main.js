var URL = 'http://barbeariaosasco.u2x.com.br';

function ConfigModal() {
    $('.modal').modal({
        dismissible: false, // Modal can be dismissed by clicking outside of the modal
        opacity: .8, // Opacity of modal background
    });
}

function setCookie(key, value) {
    var storage = window.localStorage;
    storage.setItem(key, value);
}

function getCookie(key) {
    var storage = window.localStorage;
    return storage.getItem(key);
}



function AddMessage(msg) {
    var msgs = sessionStorage.getItem("msgs")
    msgs = msgs + "|" + msg;
    sessionStorage.setItem("msgs", msgs);
}

function ShowMessage() {
    var msgs = sessionStorage.getItem("msgs")
    if (!msgs) { return; }
    msgs = msgs.split("|");
    msgs.forEach(function (msg) {
        if (msg && msg != "null") {
            Materialize.toast(msg, 4000);
        }
    });
    sessionStorage.setItem("msgs", "");
}