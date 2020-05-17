
$(function () {
    // initializing select 2
    $('.select2').select2();

    //initializing datatable
    $('#myTable').DataTable({});
});

// change role change related permissions
function onChange() {
    var roleId = $("#role_id").val();
    window.location.replace('/allpermissions' + '/' + roleId)
}

// check permissions check all if checked
function checkPermissions(elem) {
    var boxcheck = $(elem).parents();
    if($(elem).is(":checked")){
        boxcheck.children('div.box-body').children('p').children('input').attr('checked', 'checked');
    } else {
        boxcheck.children('div.box-body').children('p').children('input').removeAttr('checked');
    }
}