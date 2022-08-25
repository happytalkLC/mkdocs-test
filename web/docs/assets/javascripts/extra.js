function dict_move (http, dict_name) {
    if (document.getElementById('data_dict').parentElement.parentElement.getAttribute( 'open') == null) {
        document.getElementById('data_dict').parentElement.click();
    }
    document.getElementById(http).parentElement.click();
    document.getElementById(http+'-'+dict_name).parentElement.click();
}