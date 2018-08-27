$(function(){
    $('#data-table-desplazamientoInstituto').editableRecord({
        idName: 'Id',
        saveUrl:'./example.json',
        deleteUrl: './example.json',
        detailButtonClicked: function(){
            alert("clicked");
        }
    });
});