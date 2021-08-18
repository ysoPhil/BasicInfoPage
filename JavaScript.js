function txtOnFocus(txt) {
    txt.value = "";
    txt.style.color = "black";
}

function txtOnBlur(txt) {
    if (txt.value == "") {
        txt.value = "Firstname Lastname";
        txt.style.color = "gray";
    }
}

function radFreeOnClick(rad) {
    document.getElementById("lblAmount").innerText = "$0";
}

function radBasicOnClick(rad) {
    document.getElementById("lblAmount").innerText = "$30";
}

function radPremiumOnClick(rad) {
    document.getElementById("lblAmount").innerText = "$60";
}

function txtAgeOnChange(txt) {
    if (txt.value.length == 2) {
        txt.value = txt.value + "/";
    }
    else if (txt.value.length == 5) {
        txt.value = txt.value + "/";
    }
    else if (txt.value.length == 10) {
        document.getElementById("txtEmail").focus();
    }
}