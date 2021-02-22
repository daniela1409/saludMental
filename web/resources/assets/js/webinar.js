$(document).ready(function () {
    var table = $('#webinarTable').DataTable({
        "destroy": true,
        "language": {
            "sProcessing": "Procesando...",
            "sLengthMenu": "Mostrar _MENU_ registros",
            "sZeroRecords": "No se encontraron resultados",
            "sEmptyTable": "Ningún dato disponible en esta tabla",
            "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix": "",
            "sSearch": "Buscar:",
            "sUrl": "",
            "sInfoThousands": ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            }
        },
        "oAria": {
            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
        }
    });

    
    var table = $('#webinarTableFinalizados').DataTable({
        "destroy": true,
        "language": {
            "sProcessing": "Procesando...",
            "sLengthMenu": "Mostrar _MENU_ registros",
            "sZeroRecords": "No se encontraron resultados",
            "sEmptyTable": "Ningún dato disponible en esta tabla",
            "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix": "",
            "sSearch": "Buscar:",
            "sUrl": "",
            "sInfoThousands": ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            }
        },
        "oAria": {
            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
        }
    });

    

    $('#fechinput').on('keyup', function () {
        table
            .columns(0)
            .search(this.value)
            .draw();
    });
    $('#temainput').on('keyup', function () {
        table
            .columns(1)
            .search(this.value)
            .draw();
    });
    $('#invinput').on('keyup', function () {
        table
            .columns(2)
            .search(this.value)
            .draw();
    });

    $('#fechinputF').on('keyup', function () {
        table
            .columns(0)
            .search(this.value)
            .draw();
    });
    $('#temainputF').on('keyup', function () {
        table
            .columns(1)
            .search(this.value)
            .draw();
    });
    $('#invinputF').on('keyup', function () {
        table
            .columns(2)
            .search(this.value)
            .draw();
    });


    var tableInvitado = $('#invitadoTable').DataTable({
        "paging":   false,
        "searching":false,
        "language": {
            "sInfo": "",
            "sInfoEmpty": "",
            "emptyTable": "Ningún dato disponible en esta tabla",
            "sSearch": ""
        }
        
    });
    tableInvitado.clear().draw();
    $('#btnAgregar').click(function(){
        var invitado=$('#inInvitado').val();
        // tableInvitado.row.add([invitado,"<a  data-toggle='modal' href='#md_editarAutor' style='margin-right: 5px; background:rgb(40, 167, 69);' class='btn btn-succes btn-sm btnEditI'><i class='fas fa-edit' style='color:white;'></i></a><button style='margin-right: 5px;' type='button'  class='btn btn-danger btn-sm btnBorrarI'><i class='fa fa-times'></i></button>"]).draw();
        tableInvitado.row.add([invitado,"<button style='margin-right: 5px;' type='button'  class='btn btn-danger btn-sm btnBorrarI'><i class='fa fa-times'></i></button>"]).draw();
        document.getElementById("inInvitado").value = "";
       // document.getElementById("addInvitado").style.display='none';

    });

    $("#invitadoTable").on("click", ".btnBorrarI", function() {
        tableInvitado.row($(this).parents('tr')).remove().draw(false);
      });



    // $('#hora_ini').datetimepicker(
    //     {
    //       datepicker:false,
    //       format:'H:i'
    //     });
    //   $('#hora_fin').datetimepicker(
    //     {
    //       datepicker:false,
    //       format:'H:i'
    //     });


    // $('#tabEventos a:first').on('click', function () {
    //     table
    //         .columns(3)
    //         .search("")
    //         .draw();
    // });

    // $('#tabEventos a:eq( 1 )').on('click', function () {
    //     table
    //         .columns(3)
    //         .search("Próximo")
    //         .draw();
    // });

    // $('#tabEventos a:last').on('click', function () {
    //     table
    //         .columns(3)
    //         .search("Finalizado")
    //         .draw();
    // });

    // if( table
    //     .columns(3)
    //     .search("Finalizado")
    //     .draw()){

    //         document.getElementById('btnRegistro').disabled = true;
    //     }
});

function agregarInvitado(){

    if ($('#addInvitado').css('display') == 'none') {
        document.getElementById("addInvitado").style.display = '';
    } else {
        document.getElementById("addInvitado").style.display = 'none'
    }

}