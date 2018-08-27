<style>
.panel-inverse>.panel-heading {
	background: #009591 !important;
}

.radio.radio-css label:before {
	content: '';
	position: absolute;
	left: 0;
	top: 7px;
	width: 50px !important;
	height: 50px !important;
	border-radius: 30px !important;
	background: #dee2e6;
}

.note.note-yellow .note-icon {
	background: #f1f0eb !important;
}

.note.note-yellow {
	border-color: #f1f0eb !important;
	background: #FFFFFF !important;
	color: #806d00;
}

@media ( min-width : 576px) .form-inline .form-control {
	width
	:
	 
	70%
	!
	important
	;
	

}
</style>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>Calculadora de gobierno</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<!-- ================== BEGIN BASE CSS STYLE ================== -->
<jsp:include page="template/includesCSS.jsp"></jsp:include>
<!-- ================== END BASE CSS STYLE ================== -->




</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show">
		<span class="spinner"></span>
	</div>
	<!-- end #page-loader -->

	<!-- begin #page-container -->
	<div id="page-container"
		class="fade page-without-sidebar page-header-fixed">
		<!-- begin #header -->
		<div id="header" class="header navbar-default">
			<!-- begin navbar-header -->
			<div class="navbar-header">
				<a href="index.html" class="navbar-brand"><span
					class="navbar-logo"></span> <b>Calculadora</b> de gobierno</a>
			</div>
			<!-- end navbar-header -->

		</div>
		<!-- end #header -->

		<!-- begin #top-menu -->
		<div id="top-menu" class="top-menu">
			<!-- begin top-menu nav -->
			<ul class="nav">
				<!-- <li class="has-sub"><a href="home"> <i
						class="fa fa-th-large"></i> <span>Solicitante</span>
				</a></li> -->
				<li class="has-sub"><a href="aprobador"> <i
						class="fa fa-th-large"></i> <span>Aprobador</span>
				</a></li>
				<li class="has-sub"><a href="estatus"> <i
						class="fa fa-hdd"></i> <span>Estatus</span>
				</a></li>
				<li class="has-sub">
					<a href="solicitante"> <i class="fa fa-th-large"></i>  <span>Solicitante</span> 
					</a>
				</li>

				<li class="menu-control menu-control-left"><a
					href="javascript:;" data-click="prev-menu"><i
						class="fa fa-angle-left"></i></a></li>
				<li class="menu-control menu-control-right"><a
					href="javascript:;" data-click="next-menu"><i
						class="fa fa-angle-right"></i></a></li>
			</ul>
			<!-- end top-menu nav -->
		</div>
		<!-- end #top-menu -->

		<br> <br>
		<!-- begin #content -->
		<div id="content" class="content">


			<!-- begin page-header -->
			<h1 class="page-header">
				Flujo de aprobación 
			</h1>
			<!-- end page-header -->




			<div class="row">








				<!-- start panel -->
				<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">

					<!-- begin panel -->
					<div class="panel panel-inverse">
						<!-- begin panel-heading -->
						<div class="panel-heading">
							<div class="panel-heading-btn">

								<a href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-default"
									data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-warning"
									data-click="panel-collapse"><i class="fa fa-minus"></i></a>
							</div>
							<h4 class="panel-title">DESPLAZAMIENTO INSTITUTO</h4>
						</div>
						<!-- end panel-heading -->

						<!-- begin panel-body -->
						<div class="panel-body">
							<table id="data-table-autofill4"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="1%"></th>
										<th width="1%" data-orderable="false">Folio</th>
										<th class="text-nowrap">Fecha</th>
										<th class="text-nowrap">Nombre del solicitante</th>
										<th class="text-nowrap">Estatus</th>
										<th class="text-nowrap">Excel</th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd gradeX">
										<td width="1%" class="f-s-600 text-inverse">1</td>
										<td width="1%" class="f-s-600 text-inverse">00001</td>
										<td>02/08/2018</td>
										<td>Ricardo Gonzalez</td>
										<td><div class="col-md-9">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="radio_default_inline" id="defaultInlineRadio1"
														value="" checked=""> <label
														class="form-check-label" for="defaultInlineRadio1">Pendiente</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="radio_default_inline" id="defaultInlineRadio2"
														value=""> <label class="form-check-label"
														for="defaultInlineRadio2">Aprobado</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="radio_default_inline" id="defaultInlineRadio2"
														value=""> <label class="form-check-label"
														for="defaultInlineRadio2"> Rechazado</label>
												</div>
											</div></td>
										<td><i
											class="fa fa-file-excel fa-2x pull-left m-r-10 text-black"></i>
										<button class="form-control btn btn-success">Descargar</button></td>

									</tr>
									<tr class="even gradeC">
										<td width="1%" class="f-s-600 text-inverse">2</td>
										<td width="1%" class="f-s-600 text-inverse">00003</td>
										<td>02/08/2018</td>
										<td>Cristoph Ramirez</td>

										<td><div class="col-md-9">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="radio_default_inline" id="defaultInlineRadio1"
														value="" checked=""> <label
														class="form-check-label" for="defaultInlineRadio1">Pendiente</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="radio_default_inline" id="defaultInlineRadio2"
														value=""> <label class="form-check-label"
														for="defaultInlineRadio2">Aprobado</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="radio_default_inline" id="defaultInlineRadio2"
														value=""> <label class="form-check-label"
														for="defaultInlineRadio2">Rechazado</label>
												</div>
											</div></td>
										<td><i
											class="fa fa-file-excel fa-2x pull-left m-r-10 text-black"></i>
										<button class="form-control btn btn-success">Descargar</button></td>
									</tr>

								</tbody>
							</table>
						</div>
						<!-- end panel-body -->
					</div>
					<!-- end panel -->
				</div>
				<!-- end panel -->






			</div>




			<p>
				<a id="Agregar" href="javascript:;" data-click="swal-primary" class="btn btn-success text-rigth">
					Guardar
				</a>
			</p>
		</div>
		<!-- end #content -->

		<!-- begin theme-panel -->
		<div class="theme-panel">
			<a href="javascript:;" data-click="theme-panel-expand"
				class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
			<div class="theme-panel-content">
				<h5 class="m-t-0">Color Theme</h5>
				<ul class="theme-list clearfix">
					<li class="active"><a href="javascript:;" class="bg-green"
						data-theme="default"
						data-theme-file="../assets/css/default/theme/default.css"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-red" data-theme="red"
						data-theme-file="../assets/css/default/theme/red.css"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-blue" data-theme="blue"
						data-theme-file="../assets/css/default/theme/blue.css"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-purple"
						data-theme="purple"
						data-theme-file="../assets/css/default/theme/purple.css"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-orange"
						data-theme="orange"
						data-theme-file="../assets/css/default/theme/orange.css"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-black" data-theme="black"
						data-theme-file="../assets/css/default/theme/black.css"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
				</ul>
				<div class="divider"></div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Header
						Styling</div>
					<div class="col-md-7">
						<select name="header-styling" class="form-control form-control-sm">
							<option value="1">default</option>
							<option value="2">inverse</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label">Header</div>
					<div class="col-md-7">
						<select name="header-fixed" class="form-control form-control-sm">
							<option value="1">fixed</option>
							<option value="2">default</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Sidebar
						Styling</div>
					<div class="col-md-7">
						<select name="sidebar-styling"
							class="form-control form-control-sm">
							<option value="1">default</option>
							<option value="2">grid</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label">Sidebar</div>
					<div class="col-md-7">
						<select name="sidebar-fixed" class="form-control form-control-sm">
							<option value="1">fixed</option>
							<option value="2">default</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Sidebar
						Gradient</div>
					<div class="col-md-7">
						<select name="content-gradient"
							class="form-control form-control-sm">
							<option value="1">disabled</option>
							<option value="2">enabled</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Content
						Styling</div>
					<div class="col-md-7">
						<select name="content-styling"
							class="form-control form-control-sm">
							<option value="1">default</option>
							<option value="2">black</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-12">
						<a href="javascript:;" class="btn btn-inverse btn-block btn-sm"
							data-click="reset-local-storage">Reset Local Storage</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end theme-panel -->

		<!-- begin scroll to top btn -->
		<a href="javascript:;"
			class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
			data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->

	<!-- ================== BEGIN BASE JS ================== -->
	<jsp:include page="template/includesJS.jsp"></jsp:include>






	<!-- ================== END BASE JS ================== -->


	<script>
		$(document).ready(function() {
			App.init();
			Notification.init();

		
			$("#data-table-autofill4").DataTable({
				"scrollX" : true,
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
			    }
			});

		

		});
	</script>
</body>
</html>
