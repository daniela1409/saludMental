window.onload = function () {
    
    $(".facebook").click(function () {
        window.open("https://www.facebook.com/facultadnacional.saludpublica/", "Facebook", "width=700,height=400");
    });
    $(".twitter").click(function () {
        window.open("https://twitter.com/FacNSaludPublic", "Twitter", "width=700,height=400");
    });
    $(".youtube").click(function () {
        window.open("https://www.youtube.com/channel/UCtC4nePZ_rYxLekd_qH0I7g", "YouTube", "width=700,height=400");
    });
    
        var n = 0;
    $('#ocultaMain').click(function () {
        if (n == '0') {

            document.getElementById("custom-head").style.display = "none";
            $(this).find("span").removeClass().addClass("fa fa-angle-double-down");
            // $(".navbar-fixed-top").addClass('scrolled');
            $("#encabezado").css("margin-top", "50px");
            n = 1;
        } else {
            document.getElementById("custom-head").style.display = "block";
            // $(this).find("span").removeClass().addClass("fa fa-angle-double-up");
            // $(".navbar-fixed-top").removeClass('scrolled');
            $("#encabezado").css("margin-top", "0px");
            n = 0;

        }
    });


    $('#ocultaMain2').click(function () {

        if (n == '0') { //verifica si la opcion de N es igual a cero oculta el menu

             $(".manlistas").css("display", "none");
            
            document.getElementById("flefooter").className = "fa fa-angle-double-up";
             $("#footer").css("padding", "0");

            n = 1;
        } else {
            $(".manlistas").css("display", "block");
            
            document.getElementById("flefooter").className = "fa fa-angle-double-down";
             $("#footer").css("padding", "25px");
            
            n = 0;

        }
    });
    
    

}






