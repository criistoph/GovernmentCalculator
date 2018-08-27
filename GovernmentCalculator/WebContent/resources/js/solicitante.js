var tablaDesplazamiento;
var tablDoh;
var tablaOrdenCompraMayorista;
var tablaInventarioInstituto;
var tablDoh;
var tablaResumen;
var tablaProductos;

$(function () {
	console.log("ready");
	App.init();
    Notification.init();
	initTablaProductos();
	initTablaDesplazamientoInstituto();
	initTablaOrdenCompraMayorista();
	initTablaInventarioInstituto();
	initTablaDOH();
    init();
});

function init(){
	
	//Se inicializa el combo filtro de intitutciones//
	institucionesCombo();	
	
	$('#enviar').click(function(e) {
		e.preventDefault(), swal({
			title : "?Esta seguro que desea enviar la informacion a validar?",
			text : "Enviada la informacion no podra editarla ya que pasara por un proceso de validacion",
			icon : "info",
			buttons : {
				cancel : {
					text : "Cancelar",
					value : null,
					visible : !0,
					className : "btn btn-default",
					closeModal : !0
				},
				confirm : {
					text : "Aceptar",
					value : !0,
					visible : !0,
					className : "btn btn-info",
					closeModal : !0
				}
			}
		})
	})
//	
//	  $('#enviar').on('click', function() {
//		    swal({
//		          title: '¿Esta seguro que desea enviar la información a validar?',
//		          text: 'Enviada la información no podra editarla ya que pasara por un proceso de validación',
//		          showCancelButton: true,
//		          confirmButtonText: 'Aceptar',
//		          showCancelButton: 'Cancelar',
//		          closeOnConfirm: false,
//		          allowOutsideClick: false
//		    });
//	});  

	//Funcion encaragada de cambiar de pagina cuando se mueven las paginas de cualquier data table//
	$(document).on('click', '.paginate_button', function(e) {

	    if (e.target.textContent == "Anterior") {
//	    	var tablaDesplazamiento = $('#data-table-desplazamientoInstituto').DataTable();
	    	console.log("Entra");
//	    	tablDoh = $('#data-table-doh').DataTable();
	    	tablDoh.page('previous').draw('page');
//	        tablaDesplazamiento = $('#data-table-desplazamientoInstituto').DataTable();
	        tablaDesplazamiento.page('previous').draw('page');
//	        tablaProductos = $('#data-table-productos').DataTable();
	        tablaProductos.page('previous').draw('page');
//	        tablaOrdenCompraMayorista = $('#data-table-ordenCompraMayorista').DataTable();
	        tablaOrdenCompraMayorista.page('previous').draw('page');
//	    	tablaInventarioInstituto = $('#data-table-inventarioIstituto').DataTable();
	        tablaInventarioInstituto.page('previous').draw('page');
//	    	tablaResumen.page('previous').draw('page');
	    } else if (e.target.textContent == "Siguiente") {
//	    	tablDoh = $('#data-table-doh').DataTable();
	        tablDoh.page('next').draw('page');
//	        tablaDesplazamiento = $('#data-table-desplazamientoInstituto').DataTable();
	        tablaDesplazamiento.page('next').draw('page');
//	        tablaProductos = $('#data-table-productos').DataTable();
	        tablaProductos.page('next').draw('page');
//	        tablaOrdenCompraMayorista = $('#data-table-ordenCompraMayorista').DataTable();
	    	tablaOrdenCompraMayorista.page('next').draw('page');
//	    	tablaInventarioInstituto = $('#data-table-inventarioIstituto').DataTable();
	    	tablaInventarioInstituto.page('next').draw('page');
//	    	tablaResumen.page('next').draw('page');
	    } else {
	        var numPage = 0;
	        numPage = e.target.attributes[2].value;
	        numPage = numPage - 1;
//	        tablDoh = $('#data-table-doh').DataTable();
	        tablDoh.page(numPage).draw('page');
//	        tablaDesplazamiento = $('#data-table-desplazamientoInstituto').DataTable();
	        tablaDesplazamiento.page(numPage).draw('page');
//	        tablaProductos = $('#data-table-productos').DataTable();
	    	tablaProductos.page(numPage).draw('page');
//	    	tablaOrdenCompraMayorista = $('#data-table-ordenCompraMayorista').DataTable();
	    	tablaOrdenCompraMayorista.page(numPage).draw('page');
//	    	tablaInventarioInstituto = $('#data-table-inventarioIstituto').DataTable();
	    	tablaInventarioInstituto.page(numPage).draw('page');
//	    	tablaResumen.page(numPage).draw('page');	   
	    }
	});

	//Funcion encargada en validar en el data table que solo puedan introducir numeros//
	$('#data-table-desplazamientoInstituto tr td div input').click(function () {
		$(this).keypress(function(e) {
	        if (isNaN(String.fromCharCode(e.which))) e.preventDefault();
		})
	});
	    
	//Funcion encaragada de mostrar el numero de registros en todos los data table al momento de mover uno//  
	$(".dataTables_length select").change(function(){
		var numRecords = $("[name="+this.name+"] option:selected").text();
		console.log(numRecords);
		tablaDesplazamiento.page.len(numRecords).draw();
		tablDoh.page.len(numRecords).draw();
		tablaProductos.page.len(numRecords).draw();
	    tablaOrdenCompraMayorista.page.len(numRecords).draw();
	    tablaInventarioInstituto.page.len(numRecords).draw();
	})
	
	//Funcion de destruir y crear la tabla de desplazamiento al momento de dar click en tab desplazamiento// 
//	$("#tabDesplazamiento").click(function(){
//		tablaDesplazamiento.ajax.reload( null, false );
//	});
	
	//Funcion de destruir y crear la tabla de orden de compra al momento de dar click en tab orden de compra// 
	$("#tabOrdenCompra").click(function(){
//		tablaOrdenCompraMayorista.ajax.reload( null, false );
	});
	
	//Funcion de destruir y crear la tabla de inventario instituto al momento de dar click en tab de inventario instituto// 
	$("#tabInventarioInstituto").click(function(){
//		tablaInventarioInstituto.ajax.reload( null, false );
	});
	
	//Funcion de destruir y crear la tabla de doh al momento de dar click en tab de doh// 
	$("#tabDoh").click(function(){
//		tablDoh.ajax.reload( null, false );
	});	
	
	//Funcion para cargar combo de productos al seleccionar una institucion// 
	$('#comboInstitucion').change(function(){
		var institucion = $( "#comboInstitucion option:selected" ).val();
		productosCombo(institucion);
		
		if (tablaProductos instanceof $.fn.dataTable.Api) {
			tablaProductos.destroy();
			initTablaProductos(institucion);
		}
		if (tablaOrdenCompraMayorista instanceof $.fn.dataTable.Api) {
			tablaOrdenCompraMayorista.destroy();
			initTablaOrdenCompraMayorista(institucion);
		}
		if (tablaInventarioInstituto instanceof $.fn.dataTable.Api) {
			tablaInventarioInstituto.destroy();
			initTablaInventarioInstituto(institucion);
		}
		if (tablDoh instanceof $.fn.dataTable.Api) {
			tablDoh.destroy();
			initTablaDOH(institucion);
		}
		if (tablaDesplazamiento instanceof $.fn.dataTable.Api) {
			tablaDesplazamiento.destroy();
			initTablaDesplazamientoInstituto(institucion);
		}
		
	 });
	
	//Funcion para cargar data table de resumen// 
	$('#comboProductos').change(function(){
		var idProducto = $( "#comboProductos option:selected" ).val();
		var nombreProducto = $( "#comboProductos option:selected" ).text();
		$(".productoChange").empty();
		$(".productoChange").append("RESUMEN POR PRODUCTO: " + nombreProducto);
		if (tablaResumen instanceof $.fn.dataTable.Api) {
			tablaResumen.destroy();
		}
		initTablaResumen(idProducto);
	 });
	
	
	
	//Funcion encargada para sacar los valores de cada input//
//	$('#data-table-desplazamientoInstituto tbody tr td div input').change(function() {  
//		$(this).attr("value",$(this).val());
//	    var pos = tablaDesplazamiento.row(this).index();
//	    var row = tablaDesplazamiento.row(pos).data();
//	    var arrayRow = new Array();
//	    console.log(row);
//	    for (var i = 0; i < row.length - 1; i++) {
//	    	if($.isNumeric( row[i] )){
//	    		var auxRow = row[i];
//	  	        arrayRow.push(auxRow);
//	    	}else{
//	    		console.log();
//	    		var auxRow = row[i].substring(row[i].indexOf('value="'), row[i].indexOf('\"></div>'));
//	  	        auxRow = auxRow.replace("value=\"", "");
//	  	        arrayRow.push(auxRow);
//
//	    	}
//
//	    }
//	}); 
 
	 var string;
	 var count =0;
	$("#data-table-desplazamientoInstituto tbody tr td div .inputEditable").change(function(){

		 var array = new Array();
		 var array2 = new Array();
		
		 $.each($("#data-table-desplazamientoInstituto tbody tr td div .inputEditable"), function(i, item){
			  
			    string+= item.value + ",";
			 	if(count == 16){
			 		array.push(string.split(","));
			 		string = "";
			 		count = -1;
			 	}
			 	count ++;
		 });
		
		 
		 $.each(array, function(i, item){
			 console.log(array[i][2]);
			 
			 if(i == 0){
				 array[i][0] = array[i][0].replace("undefined","");
			 }
//			 array[i].splice(1, 1);A
//			 	array[i].splice(14, 1);
			 array[i].splice(15, 1);
			 array[i].splice(16, 1);
			 array[i].splice(17, 1);
			 console.log(array[i][2]);
			 
			 	var producto = {
		    			idProducto: array[i][0]
		    	}
		    	var desplazamiento = {
			 			inventarioInicial: parseInt(array[i][2]),	
		    			dEnero: parseInt(array[i][3]), 
		    			dFebrero: parseInt(array[i][4]),  
		    			dMarzo: parseInt(array[i][5]), 
		    			dAbril: parseInt(array[i][6]), 
		    			dMayo: parseInt(array[i][7]), 
		    			dJunio: parseInt(array[i][8]), 
		    		    dJulio: parseInt(array[i][9]), 
		    			dAgosto: parseInt(array[i][10]), 
		    			dSeptiembre: parseInt(array[i][11]), 
		    			dOctubre: parseInt(array[i][12]), 
		    			dNoviembre: parseInt(array[i][13]), 
		    			dDiciembre: parseInt(array[i][14]),
		    			producto: producto
		    	};  
			 	array2.push(desplazamiento);
			 

		 });
		 
//		 for (var i = 0; i < array.length; i++) {
//			 if(i == 0){
//				 array[i][0].replace("undefined","");
//			 }
//			 delete  array[i][1];
//			 delete  array[i][15];
//			 delete  array[i][16];
//			 delete  array[i][17];
//			 	var producto = {
//		    			idProducto: array[i][0]
//		    	}
//		    	var desplazamiento = {
//		    			inventarioInicial: parseInt(array[i][2]),	
//		    			dEnero: parseInt(array[i][3]), 
//		    			dFebrero: parseInt(array[i][4]),  
//		    			dMarzo: parseInt(array[i][5]), 
//		    			dAbril: parseInt(array[i][6]), 
//		    			dMayo: parseInt(array[i][7]), 
//		    			dJunio: parseInt(array[i][8]), 
//		    		    dJulio: parseInt(array[i][9]), 
//		    			dAgosto: parseInt(array[i][10]), 
//		    			dSeptiembre: parseInt(array[i][11]), 
//		    			dOctubre: parseInt(array[i][12]), 
//		    			dNoviembre: parseInt(array[i][13]), 
//		    			dDiciembre: parseInt(array[i][14]),
//		    			producto: parseInt(array[i][0])
//		    	};  
//			 	array.push(desplazamiento);
//		 }
		 
		console.log(array2);
//		var data = tablaDesplazamiento.rows().data();
//	    var array = new Array();
//
//	    for(var i = 0; i < data.length; i++){
//	    	var producto = {
//	    			idProducto: data[i][0]
//	    	}
//	    	var desplazamiento = {
//	    			inventarioInicial: parseInt(data[i][2].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')),	
//	    			dEnero: parseInt(data[i][3].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    			dFebrero: parseInt(data[i][4].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')),  
//	    			dMarzo: parseInt(data[i][5].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    			dAbril: parseInt(data[i][6].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    			dMayo: parseInt(data[i][7].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    			dJunio: parseInt(data[i][8].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    		    dJulio: parseInt(data[i][9].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    			dAgosto: parseInt(data[i][10].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    			dSeptiembre: parseInt(data[i][11].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    			dOctubre: parseInt(data[i][12].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    			dNoviembre: parseInt(data[i][13].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')), 
//	    			dDiciembre: parseInt(data[i][14].replace('<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="','').replace('"></div>','')),
//	    			producto: producto
//	    	};    	
//	    	array.push(desplazamiento);
//	    	console.log(array);
//	    }	 
//	    
		$.ajax({
			dataType: 'application/json',
		    type: 'POST',
		    url: 'calculadoraController/guardarTablaDesplazamiento',
		    data: {
		    	arreglo: JSON.stringify(array2)
		    },
		    success: function (data) {
		    }
		});

	    
	});	
}


//Se inicializa la tabla de productos//
function initTablaProductos(institucion){

	var datos = [];
	console.log("##" + institucion);
	$.ajax({
	    async: false,
	    type: 'POST',
	    url: 'calculadoraController/cargarTablaProducto',
//	    dataType: 'json',
//	    contentType: 'application/json; charset=utf-8',
	    data: {
	    	idInstituto: institucion
	    },
	    success: function (data) {
	    	console.log("Entra");
	    	console.log(data);
	        $.each(data, function(i, item){
	            datos.push(['<div class="divDataTableProductos">'+item.idProducto+'<div>','<div class="divDataTableProductos">'+item.eanUpc+'<div>','<div class="divDataTableProductos">'+item.sku+'<div>','<div class="divDataTableProductos">'+ item.nombreProducto+'<div>', '<div class="divDataTableProductos">'+item.nombreCliente+'<div>', 
	            	'<div class="divDataTableProductos">'+item.nombreInstitucion+'<div>','<div class="divDataTableProductos">'+item.ref1+'<div>','<div class="divDataTableProductos">'+item.refDoc+'<div>']);
	        });
	    }
	});


	tablaProductos = $('#data-table-productos').DataTable({		
        scrollX:        true,
        scrollCollapse: true,
        autoWidth:         true,  
        paging:         true,     
	    "searching": false,
	    "ordering": false, 
        columnDefs: [
        { "width": "150px", "targets": [0,1] },       
        { "width": "40px", "targets": [4] }
                    ],
		"aLengthMenu": [
            [5, 10, 25, 50],
            [5, 10, 25, 50]
        ],
	    language: {
	        "decimal": "",
	        "emptyTable": "No hay información",
	        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
	        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
	        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
	        "infoPostFix": "",
	        "thousands": ",",
	        "lengthMenu": "Mostrar _MENU_ Entradas",
	        "loadingRecords": "Cargando...",
	        "processing": "Procesando...",
	        "search": "Buscar:",
	        "zeroRecords": "Sin resultados encontrados",
	        "paginate": {
	            "first": "Primero",
	            "last": "Ultimo",
	            "next": "Siguiente",
	            "previous": "Anterior"
	        }
	    },
        data: datos,
        columns: [
        	{
        		title: "ID PRODUCTO",
        		visible: false,className: "text-nowrap"
        	}, {
	        	title: "EAN",
	        	visible: false,className: "text-nowrap"
	        }, {
	        	title: "SKU",className: "text-nowrap"
	        }, {
	        	title: "PRODUCTO",className: "text-nowrap"
	        }, {
	        	title: "CLIENTE",className: "text-nowrap"
	        }, {
	        	title: "INSTITUCION",className: "text-nowrap"
	        },{
	        	title: "REF1",
	        	visible: false,className: "text-nowrap"
	        },{
	        	title: "REF_DOC",
	        	visible: false,className: "text-nowrap"
	        }
        ],
        dom: "<'row'<'col-sm-4'l><'col-sm-4'f><'col-sm-4'B>>" +
        	 "t" +
        	 "<'row'<'col-sm-6'i><'col-sm-6'p>>",
        	 
	});
	
	
	tablaProductos.columns().every( function () {
        var that = this;
 
        $( 'input', this.header() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that.search( this.value ).draw();
            }
        } );
    } );
	
}


//Se inicializa la tabla de orden de compra mayorista//
function initTablaOrdenCompraMayorista(institucion){
	
	var datos = [];
	var datosJSON;
	$.ajax({
	    async: false,
	    type: 'POST',
	    url: 'calculadoraController/cargarTablaOrden',
//	    dataType: 'json',
//	    contentType: 'application/json; charset=utf-8',
	    data: {
	    	idInstituto: institucion
	    },
	    success: function (response) {
	        $.each(response, function(i, item){
	            datos.push([item.producto.idProducto,item.oEnero,item.oFebrero,item.oMarzo, item.oAbril, item.oMayo, 
	            			item.oJunio,item.oJulio,item.oAgosto,item.oSeptiembre,item.oOctubre,
	            			item.oNoviembre,item.oDiciembre]);
	        });
	    }
	});
	
	tablaOrdenCompraMayorista = $("#data-table-ordenCompraMayorista").DataTable({
		  "scrollX": true,
		    "searching": false,
		    "ordering": false,
		    fixedColumns:   {
	            heightMatch: 'none'
	        },
			"aLengthMenu": [
	            [5, 10, 25, 50],
	            [5, 10, 25, 50]
	        ],
	    language: {
	        "decimal": "",
	        "emptyTable": "No hay información",
	        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
	        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
	        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
	        "infoPostFix": "",
	        "thousands": ",",
	        "lengthMenu": "Mostrar _MENU_ Entradas",
	        "loadingRecords": "Cargando...",
	        "processing": "Procesando...",
	        "search": "Buscar:",
	        "zeroRecords": "Sin resultados encontrados",
	        "paginate": {
	            "first": "Primero",
	            "last": "Ultimo",
	            "next": "Siguiente",
	            "previous": "Anterior"
	        }
	    },
	    data: datos,
	    "dataSrc": "",
	    drawCallback: function (data) {
	    	for(var i = 0; i < data.length; i++){
		        columns: [
		        	{
		        		title: "ID_PRODUCTO",data: "data"+[i]+".producto.idProducto"
		        	},{
		        		title: "ENERO",data: "data"+[i]+".oEnero"
		        	}, {
			        	title: "FEBRERO",data: "data"+[i]+".oFebrero"
			        }, {
			        	title: "MARZO",data: "data"+[i]+".oMarzo"
			        }, {
			        	title: "ABRIL",data: "data"+[i]+".oAbril"
			        }, {
			        	title: "MAYO",data: "data"+[i]+".oMayo"
			        }, {
			        	title: "JUNIO",data: "data"+[i]+".oJunio"
			        },{
			        	title: "JULIO",data: "data"+[i]+".oJulio"
			        },{
			        	title: "AGOSTO",data: "data"+[i]+".oAgosto"
			        },{
			        	title: "SEPTIEMBRE",data: "data"+[i]+".oSeptiembre"
			        },{
			        	title: "OCTUBRE",data: "data"+[i]+".oOctubre"
			        },{
			        	title: "NOVIEMBRE",data: "data"+[i]+".oNoviembre"
			        },{
			        	title: "DICIEMBRE",data: "data"+[i]+".oDiciembre"
			        }
		        ]
		    }
	    },
        dom: "<'row'<'col-sm-4'l><'col-sm-4'f><'col-sm-4'B>>" +
        	 "t" +
        	 "<'row'<'col-sm-6'i><'col-sm-6'p>>",
	});
}


//Se inicializa la tabla de inventario instituto//
function initTablaInventarioInstituto(institucion){
	var datos = [];
	$.ajax({
	    async: false,
	    type: 'POST',
	    url: 'calculadoraController/cargarTablaInventario',
//	    dataType: 'json',
//	    contentType: 'application/json; charset=utf-8',
	    data: {
	    	idInstituto: institucion
	    },
	    success: function (data) {
	        $.each(data, function(i, item){
	            datos.push([item.iEnero,item.iFebrero,item.iMarzo, item.iAbril, item.iMayo, 
	            			item.iJunio,item.iJulio,item.iAgosto,item.iSeptiembre,item.iOctubre,
	            			item.iNoviembre,item.iDiciembre]);
	        });
	    }
	});
	tablaInventarioInstituto = $("#data-table-inventarioIstituto").DataTable({
		  "scrollX": true,
		    "searching": false,
		    "ordering": false,
		    fixedColumns:   {
	            heightMatch: 'none'
	        },
			"aLengthMenu": [
	            [5, 10, 25, 50],
	            [5, 10, 25, 50]
	        ],
	    language: {
	        "decimal": "",
	        "emptyTable": "No hay información",
	        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
	        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
	        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
	        "infoPostFix": "",
	        "thousands": ",",
	        "lengthMenu": "Mostrar _MENU_ Entradas",
	        "loadingRecords": "Cargando...",
	        "processing": "Procesando...",
	        "search": "Buscar:",
	        "zeroRecords": "Sin resultados encontrados",
	        "paginate": {
	            "first": "Primero",
	            "last": "Ultimo",
	            "next": "Siguiente",
	            "previous": "Anterior"
	        }
	    },
	    data: datos,
      columns: [
      	{
      		title: "ENERO"
      	}, {
	        	title: "FEBRERO"
	        }, {
	        	title: "MARZO"
	        }, {
	        	title: "ABRIL",
	        }, {
	        	title: "MAYO"
	        }, {
	        	title: "JUNIO"
	        },{
	        	title: "JULIO"
	        },{
	        	title: "AGOSTO"
	        },{
	        	title: "SEPTIEMBRE"
	        },{
	        	title: "OCTUBRE"
	        },{
	        	title: "NOVIEMBRE"
	        },{
	        	title: "DICIEMBRE"
	        }
      ],
      dom: "<'row'<'col-sm-4'l><'col-sm-4'f><'col-sm-4'B>>" +
      	 "t" +
      	 "<'row'<'col-sm-6'i><'col-sm-6'p>>",
	});
}


//Se inicializa la tabla de DOH//
function initTablaDOH(institucion){
	
	var datos = [];
	$.ajax({
	    async: false,
	    type: 'POST',
	    url: 'calculadoraController/cargarTablaDoh',
//	    dataType: 'json',
//	    contentType: 'application/json; charset=utf-8',
	    data: {
	    	idInstituto: institucion
	    },
	    success: function (data) {
	        $.each(data, function(i, item){
	            datos.push([item.dEnero,item.dFebrero,item.dMarzo, item.dAbril, item.dMayo, 
	            			item.dJunio,item.dJulio,item.dAgosto,item.dSeptiembre,item.dOctubre,
	            			item.dNoviembre,item.dDiciembre]);
	        });
	    }
	});
	
	tablDoh = $("#data-table-doh").DataTable({
		"scrollX": true,
	    "searching": false,
	    "ordering": false,
		"aLengthMenu": [
            [5, 10, 25, 50],
            [5, 10, 25, 50]
        ],
	    language: {
	        "decimal": "",
	        "emptyTable": "No hay información",
	        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
	        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
	        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
	        "infoPostFix": "",
	        "thousands": ",",
	        "lengthMenu": "Mostrar _MENU_ Entradas",
	        "loadingRecords": "Cargando...",
	        "processing": "Procesando...",
	        "search": "Buscar:",
	        "zeroRecords": "Sin resultados encontrados",
	        "paginate": {
	            "first": "Primero",
	            "last": "Ultimo",
	            "next": "Siguiente",
	            "previous": "Anterior"
	        }
	    },
	    data: datos,
	      columns: [
	      	{
	      		title: "ENERO"
	      	}, {
		        	title: "FEBRERO"
		        }, {
		        	title: "MARZO"
		        }, {
		        	title: "ABRIL",
		        }, {
		        	title: "MAYO"
		        }, {
		        	title: "JUNIO"
		        },{
		        	title: "JULIO"
		        },{
		        	title: "AGOSTO"
		        },{
		        	title: "SEPTIEMBRE"
		        },{
		        	title: "OCTUBRE"
		        },{
		        	title: "NOVIEMBRE"
		        },{
		        	title: "DICIEMBRE"
		        }
	      ],
	      dom: "<'row'<'col-sm-4'l><'col-sm-4'f><'col-sm-4'B>>" +
	      	 "t" +
	      	 "<'row'<'col-sm-6'i><'col-sm-6'p>>",
	});
}


//Se inicializa la tabla de resumen//
function initTablaResumen(idProducto){
	console.log("*********");
	console.log(idProducto);
	var datos = [];
	var resumen = new Array();
	resumen.push("Desplazamiento instituto","Orden de compra mayorista","Inventario instituto","Days of Hand");

	$.ajax({
	    async: false,
	    type: 'POST',
	    url: 'calculadoraController/cargarTablaResumen',
	    data: {
	    	idProducto : idProducto
	    },
	    success: function (data) {
	        $.each(data, function(i, item){
	            datos.push([resumen[i],item.rEnero,item.rFebrero,item.rMarzo, item.rAbril, item.rMayo, 
	            			item.rJunio,item.rJulio,item.rAgosto,item.rSeptiembre,item.rOctubre,
	            			item.rNoviembre,item.rDiciembre]);
	        });
	    }
	});
	
	
	tablaResumen = $('#data-table-resumen').DataTable({
	    dom: 'lrtip',
	    "scrollX": true,
	    "ordering": false,
	    "searching": false,
	    "ordering": false,
	    "paging": false,
	    language: {
	        "decimal": "",
	        "emptyTable": "No hay información",
	        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
	        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
	        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
	        "infoPostFix": "",
	        "thousands": ",",
	        "lengthMenu": "Mostrar _MENU_ Entradas",
	        "loadingRecords": "Cargando...",
	        "processing": "Procesando...",
	        "search": "Buscar:",
	        "zeroRecords": "Sin resultados encontrados",
	        "paginate": {
	            "first": "Primero",
	            "last": "Ultimo",
	            "next": "Siguiente",
	            "previous": "Anterior"
	        }
	    },
	    data: datos,
	    "dataSrc": "",
		        columns: [
		        	{
			        	title: "RESUMEN"
			        }, {
		        		title: "ENERO"
		        	}, {
			        	title: "FEBRERO"
			        }, {
			        	title: "MARZO"
			        }, {
			        	title: "ABRIL"
			        }, {
			        	title: "MAYO"
			        }, {
			        	title: "JUNIO"
			        },{
			        	title: "JULIO"
			        },{
			        	title: "AGOSTO"
			        },{
			        	title: "SEPTIEMBRE"
			        },{
			        	title: "OCTUBRE"
			        },{
			        	title: "NOVIEMBRE"
			        },{
			        	title: "DICIEMBRE"
			        }
		        ],
		        dom: "<'row'<'col-sm-4'l><'col-sm-4'f><'col-sm-4'B>>" +
        	 "t" +
        	 "<'row'<'col-sm-6'i><'col-sm-6'p>>",
        	 
	});
}


//Se inicializa la tabla de desplazamiento instituto//
function initTablaDesplazamientoInstituto(institucion){
	console.log("EEEEEE");
	console.log(institucion);
	var datos = [];
	$.ajax({
	    async: false,
	    type: 'POST',
	    url: 'calculadoraController/cargarTablaDesplazamiento',
//	    dataType: 'json',
//	    contentType: 'application/json; charset=utf-8',
	    data: {
	    	idInstituto: institucion
	    },
	    success: function (data) {
	    	console.log(data);
	        $.each(data, function(i, item){
	        	var fy = 0;
	        	var promedio = 0;
	        	
	        	fy = item.dEnero + item.dFebrero + item.dMarzo + item.dAbril + item.dMayo + item.dJunio + item.dJulio + item.dAgosto + item.dSeptiembre + item.dOctubre + item.dNoviembre + item.dDiciembre;
	        	promedio = fy/12;
	        	
	            datos.push(['<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+item.producto.idProducto+'"></div>','<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.producto.ventaFy)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.inventarioInicial)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dEnero)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dFebrero)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dMarzo)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dAbril)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dMayo)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dJunio)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dJulio)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dAgosto)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dSeptiembre)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dOctubre)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dNoviembre)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(item.dDiciembre)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(fy)+'"></div>',
		        	'<div class="ui fluid transparent input"><input type="text" class="inputEditable" value="'+Math.round(promedio)+'"></div>']);
	        });
	    }
	});
	
	tablaDesplazamiento = $("#data-table-desplazamientoInstituto").DataTable({
		"scrollX": true,
	    "searching": false,
	    "ordering": false,
	    fixedColumns:   {
            heightMatch: 'none'
        },
		"aLengthMenu": [
            [5, 10, 25, 50],
            [5, 10, 25, 50]
        ],
	    language: {
	        "decimal": "",
	        "emptyTable": "No hay información",
	        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
	        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
	        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
	        "infoPostFix": "",
	        "thousands": ",",
	        "lengthMenu": "Mostrar _MENU_ Entradas",
	        "loadingRecords": "Cargando...",
	        "processing": "Procesando...",
	        "search": "Buscar:",
	        "zeroRecords": "Sin resultados encontrados",
	        "paginate": {
	            "first": "Primero",
	            "last": "Ultimo",
	            "next": "Siguiente",
	            "previous": "Anterior"
	        }
	    },  
        data: datos,
        columns: [
	        	{
		        	title: "ID PRODUCTO",className: "text-nowrap"
		        }, {
		        	title: "VENTA FY",className: "text-nowrap"
		        },{
	      			title: "INVENTARIO INICIAL",className: "text-nowrap"
	      		},{
	      			title: "ENERO",className: "text-nowrap"
	      		}, {
		        	title: "FEBRERO",className: "text-nowrap"
		        }, {
		        	title: "MARZO",className: "text-nowrap"
		        }, {
		        	title: "ABRIL",className: "text-nowrap"
		        }, {
		        	title: "MAYO",className: "text-nowrap"
		        }, {
		        	title: "JUNIO",className: "text-nowrap"
		        },{
		        	title: "JULIO",className: "text-nowrap"
		        },{
		        	title: "AGOSTO",className: "text-nowrap"
		        },{
		        	title: "SEPTIEMBRE",className: "text-nowrap"
		        },{
		        	title: "OCTUBRE",className: "text-nowrap"
		        },{
		        	title: "NOVIEMBRE",className: "text-nowrap"
		        },{
		        	title: "DICIEMBRE",className: "text-nowrap"
		        },{
	      			title: "FY",className: "text-nowrap"
	      		},{
	      			title: "PROMEDIO",className: "text-nowrap"
	      		}
	      ],
	      dom: "<'row'<'col-sm-4'l><'col-sm-4'f><'col-sm-4'B>>" +
	      	 "t" +
	      	 "<'row'<'col-sm-6'i><'col-sm-6'p>>",
//	    initComplete: function() {
//	        var api = this.api(),
//	            colCount = api.row(0).data().length;
//	        api.column(16).visible(false);
//	        console.log("Entra");
//	    }
	});
//	tablaDesplazamiento.column( 0 ).visible( false );
}


//Se inicializa el combo filtro de intitutciones//
function institucionesCombo() {
	$.ajax({
		method : "POST",
		url : 'calculadoraController/cargarComboInstitucion',
		async : false,
		success : function(instituciones) {

			if (instituciones.length > 0) {
				$.each(instituciones, function(i, institucion) {
					$('#comboInstitucion').append($('<option>', {
						value : institucion.idInstitucion,
						text : institucion.nombreInstitucion
					}));
				});
			}
		}
	});
}


//Funcion para cargar combo de productos al seleccionar una institucion// 
function productosCombo(institucion) {
	$('#comboProductos').empty();
	$.ajax({
		method : "POST",
		url : 'calculadoraController/cargarComboProductos',
		async : false,
		data : {
			idInstitucion : institucion 
		},
		success : function(productos) {
			if (productos.length > 0) {
				$.each(productos, function(i, producto) {
					$('#comboProductos').append($('<option>', {
						value : producto.eanUpc,
						text : producto.nombreProducto
					}));
				});
			}
		}
	});
}