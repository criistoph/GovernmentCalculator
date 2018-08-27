<!DOCTYPE html>
<html lang="en">

<head>
    
	<meta charset="utf-8" />
	<title>Calculadora de gobierno</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<jsp:include page="template/includesCSS.jsp"></jsp:include>
	<!-- ================== END BASE CSS STYLE ================== -->
</head>

<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"> <span class="spinner"></span>
	</div>
	<!-- end #page-loader -->
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-without-sidebar page-header-fixed">
		<!-- begin #header -->
		<div id="header" class="header navbar-default">
			<!-- begin navbar-header -->
			<div class="navbar-header"> <a href="index.html" class="navbar-brand"><span class="navbar-logo"></span> <b>Calculadora</b> de gobierno</a>
			</div>
			<!-- end navbar-header -->
		</div>
		<!-- end #header -->
		<!-- begin #top-menu -->
		<div id="top-menu" class="top-menu">
			<!-- begin top-menu nav -->
			<ul class="nav">
				<!-- <li class="has-sub">
					<a href="home"> <i class="fa fa-th-large"></i>  <span>Solicitante</span>
					</a>
				</li> -->
				<li class="has-sub">
					<a href="aprobador"> <i class="fa fa-th-large"></i>  <span>Aprobador</span>
					</a>
				</li>
				<li class="has-sub">
					<a href="estatus"> <i class="fa fa-hdd"></i><span>Estatus</span>
					</a>
				</li>
				<li class="has-sub">
					<a href="solicitante"> <i class="fa fa-th-large"></i>  <span>Solicitante</span> 
					</a>
				</li>
				<li class="menu-control menu-control-left"><a href="javascript:;" data-click="prev-menu"><i class="fa fa-angle-left"></i></a>
				</li>
				<li class="menu-control menu-control-right"><a href="javascript:;" data-click="next-menu"><i class="fa fa-angle-right"></i></a>
				</li>
			</ul>
			<!-- end top-menu nav -->
		</div>
		<!-- end #top-menu -->
		<br>
		<br>
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin page-header -->
			<h1 class="page-header">Datos solicitante</h1>
			<!-- end page-header -->
			<!-- begin page-filters -->
			<div class="row">
				<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
					<label>Hospital:
						<select class="form-control" id="comboInstitucion">
							<option>Seleccione una opción</option>
						</select>
					</label>
				</div>
				<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
					<label>Producto:
						<select class="form-control" id="comboProductos">
							<option>Seleccione una opción</option>
						</select>
					</label>
				</div>
				<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
					<label>Año:
						<select class="form-control">
							<option>Seleccione una opción</option>
						</select>
					</label>
				</div>
				<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
					<label>Ingresa el No. de evento:
						<input class="form-control" />
					</label>
				</div>
			</div>
			<!-- end page-filters -->
			<!-- begin resume-table-page -->
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
					<!-- begin panel -->
					<div class="panel panel-inverse">
						<!-- begin panel-heading -->
						<div class="panel-heading">
							<div class="panel-heading-btn"> <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>  <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
							</div>
							<h4 class="panel-title productoChange">RESUMEN POR PRODUCTO:</h4>
						</div>
						<!-- end panel-heading -->
						<!-- begin panel-body -->
						<div class="panel-body">
							<!-- begin resume-table -->
							<table id="data-table-resumen" class="table table-striped table-bordered nowrap">
								<thead>
									<tr>
										<th class="text-nowrap" width="1%">Resumen</th>
										<th class="text-nowrap" width="1%" data-orderable="false">ENERO</th>
										<th class="text-nowrap">FEBRERO</th>
										<th class="text-nowrap">MARZO</th>
										<th class="text-nowrap">ABRIL</th>
										<th class="text-nowrap">MAYO</th>
										<th class="text-nowrap">JUNIO</th>
										<th class="text-nowrap">JULIO</th>
										<th class="text-nowrap">AGOSTO</th>
										<th class="text-nowrap">SEPTIEMBRE</th>
										<th class="text-nowrap">OCTUBRE</th>
										<th class="text-nowrap">NOVIEMBRE</th>
										<th class="text-nowrap">DICIEMBRE</th>
									</tr>
								</thead>
							</table>
							<!-- end resume-table -->
						</div>
						<!-- end panel-body -->
					</div>
					<!-- end panel -->
				</div>
			</div>
			<!-- end resume-table-page -->
			<!-- begin tables -->
			<div class="row">
				<div class="col-sm-12 col-md-5 col-lg-5 col-xl-45">
					<!-- begin panel -->
					<div class="panel panel-inverse">
						<!-- begin panel-heading -->
						<div class="panel-heading">
							<div class="panel-heading-btn"> <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>  <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
							</div>
							<h4 class="panel-title">PRODUCTOS</h4>
						</div>
						<!-- end panel-heading -->
						<!-- begin panel-body -->
						<div class="panel-body">
							<table id="data-table-productos" class="table table-striped table-bordered nowrap" style="width:100%">
								<thead>
									<tr>
										<th class="text-nowrap" width="1%" data-orderable="false">ID</th>
										<th class="text-nowrap" width="1%" data-orderable="false">EAN</th>
										<th class="text-nowrap" width="1%" data-orderable="false">SKU</th>
										<th class="text-nowrap">Producto</th>
										<th class="text-nowrap">Cliente</th>
										<th class="text-nowrap">Institucion</th>
										<th class="text-nowrap">REF1</th>
										<th class="text-nowrap">REF_DOC</th>
									</tr> 
								</thead>
							</table>
						</div>
						<!-- end panel-body -->
					</div>
					<!-- end panel -->
				</div>
				<!-- end panel -->
				<div class="col-sm-12 col-md-7 col-lg-7 col-xl-7">
					<div class="panel panel-inverse panel-with-tabs" data-sortable-id="ui-unlimited-tabs-1" style="">
						<!-- begin panel-heading -->
						<div class="panel-heading p-0 ui-sortable-handle">
							<div class="panel-heading-btn m-r-10 m-t-10"> <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-expand"><i class="fa fa-expand"></i></a>
							</div>
							<!-- begin nav-tabs -->
							<div class="tab-overflow overflow-right">
								<ul class="nav nav-tabs nav-tabs-inverse">
									<li class="nav-item prev-button" style=""><a href="javascript:;" data-click="prev-tab" class="nav-link text-success"><i class="fa fa-arrow-left"></i></a>
									</li>
									<li class="nav-item "><a href="#nav-tab-1" id="tabDesplazamiento" data-toggle="tab" id="primerTab" class="nav-link">Desplazamiento instituto</a>
									</li>
									<li class="nav-item"><a href="#nav-tab-2" id="tabOrdenCompra" data-toggle="tab" class="nav-link">Orden de compra mayorista</a>
									</li>
									<li class="nav-item"><a href="#nav-tab-3" id="tabInventarioInstituto" data-toggle="tab" class="nav-link">Inventario de instituto</a>
									</li>
									<li class="nav-item"><a href="#nav-tab-4" id="tabDoh" data-toggle="tab" class="nav-link">DOH</a>
									</li>
									<li class="nav-item next-button" style=""><a href="javascript:;" data-click="next-tab" class="nav-link text-success"><i class="fa fa-arrow-right"></i></a>
									</li>
								</ul>
							</div>
							<!-- end nav-tabs -->
						</div>
						<!-- end panel-heading -->
						<!-- begin tab-content -->
						<div class="tab-content">
							<!-- begin tab-pane -->
							<div class="tab-pane fade" id="nav-tab-1">
								<table id="data-table-desplazamientoInstituto" class=" table table-striped table-bordered">
									<thead>
										<!-- <tr>
											<th class="text-nowrap" data-type="text" name="ventaFy">Venta FY</th>
											<th class="text-nowrap" data-type="text" name="invini">Inventario Inicial</th>
											<th data-type="text" name="enero">Enero</th>
											<th data-type="text" name="enero">Febrero</th>
											<th data-type="text" name="enero">Marzo</th>
											<th data-type="text" name="enero">Abril</th>
											<th data-type="text" name="enero">Mayo</th>
											<th data-type="text" name="enero">Junio</th>
											<th data-type="text" name="enero">Julio</th>
											<th data-type="text" name="enero">Agosto</th>
											<th data-type="text" name="enero">Septiembre</th>
											<th data-type="text" name="enero">Octubre</th>
											<th data-type="text" name="enero">Noviembre</th>
											<th data-type="text" name="enero">Diciembre</th>
											<th class="text-nowrap" data-type="text" name="fy">FY</th>
											<th class="text-nowrap" data-type="text" name="promedio">Promedio</th>
										</tr> -->
									</thead>
									
								</table>
							</div>
							<!-- end tab-pane -->
							<!-- begin tab-pane -->
							<div class="tab-pane fade" id="nav-tab-2">
								<table id="data-table-ordenCompraMayorista" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th width="1%" data-orderable="false">ENERO</th>
											<th class="text-nowrap">FEBRERO</th>
											<th class="text-nowrap">MARZO</th>
											<th class="text-nowrap">ABRIL</th>
											<th class="text-nowrap">MAYO</th>
											<th class="text-nowrap">JUNIO</th>
											<th class="text-nowrap">JULIO</th>
											<th class="text-nowrap">AGOSTO</th>
											<th class="text-nowrap">SEPTIEMBRE</th>
											<th class="text-nowrap">OCTUBRE</th>
											<th class="text-nowrap">NOVIEMBRE</th>
											<th class="text-nowrap">DICIEMBRE</th>
										</tr>
									</thead>
									
								</table>
							</div>
							<!-- end tab-pane -->
							<!-- begin tab-pane -->
							<div class="tab-pane fade" id="nav-tab-3">
								<table id="data-table-inventarioIstituto" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th width="1%" data-orderable="false">ENERO</th>
											<th class="text-nowrap">FEBRERO</th>
											<th class="text-nowrap">MARZO</th>
											<th class="text-nowrap">ABRIL</th>
											<th class="text-nowrap">MAYO</th>
											<th class="text-nowrap">JUNIO</th>
											<th class="text-nowrap">JULIO</th>
											<th class="text-nowrap">AGOSTO</th>
											<th class="text-nowrap">SEPTIEMBRE</th>
											<th class="text-nowrap">OCTUBRE</th>
											<th class="text-nowrap">NOVIEMBRE</th>
											<th class="text-nowrap">DICIEMBRE</th>
										</tr>
									</thead>
								
								</table>
							</div>
							<!-- end tab-pane -->
							<!-- begin tab-pane -->
							<div class="tab-pane fade" id="nav-tab-4">
								<table id="data-table-doh" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th width="1%" data-orderable="false">ENERO</th>
											<th class="text-nowrap">FEBRERO</th>
											<th class="text-nowrap">MARZO</th>
											<th class="text-nowrap">ABRIL</th>
											<th class="text-nowrap">MAYO</th>
											<th class="text-nowrap">JUNIO</th>
											<th class="text-nowrap">JULIO</th>
											<th class="text-nowrap">AGOSTO</th>
											<th class="text-nowrap">SEPTIEMBRE</th>
											<th class="text-nowrap">OCTUBRE</th>
											<th class="text-nowrap">NOVIEMBRE</th>
											<th class="text-nowrap">DICIEMBRE</th>
										</tr>
									</thead>
									
								</table>
							</div>
							<!-- end tab-pane -->
						</div>
						<!-- end tab-content -->
					</div>
				</div>
			</div>
			<!-- end tables -->
			
			<!-- begin buttons -->
			<div class="row"> 
				<div class="col-sm-0 col-md-8 col-lg-10 col-xl-10"></div>
		 		<div class="col-sm-12 col-md-2 col-lg-2 col-xl-2">
		 		
		 		
		 			<a href="javascript:;" id="enviar" class="btn btn-info">Enviar información a validar</a>
		 		
		 			<!-- <button type="button" id="guardarInformacion" class="form-control btn btn-primary">Enviar información a validar</button>	 		 -->	
		 		</div>
		 	<!-- 	<div class="col-sm-12 col-md-2 col-lg-2 col-xl-2">
		 			<button type="button" id="guardarInformacion" class="form-control btn btn-primary">Guardar información</button>	 			
		 		</div> -->
		 	</div> 
			<!-- end buttons -->
		</div>	
	</div>
		<!-- end #content -->
		<!-- begin theme-panel -->
		<div class="theme-panel"> <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
			<div class="theme-panel-content">
				<h5 class="m-t-0">Color Theme</h5>
				<ul class="theme-list clearfix">
					<li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-theme-file="../assets/css/default/theme/default.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-red" data-theme="red" data-theme-file="../assets/css/default/theme/red.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-blue" data-theme="blue" data-theme-file="../assets/css/default/theme/blue.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-purple" data-theme="purple" data-theme-file="../assets/css/default/theme/purple.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-orange" data-theme="orange" data-theme-file="../assets/css/default/theme/orange.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-black" data-theme="black" data-theme-file="../assets/css/default/theme/black.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a>
					</li>
				</ul>
				<div class="divider"></div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Header Styling</div>
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
					<div class="col-md-5 control-label double-line">Sidebar Styling</div>
					<div class="col-md-7">
						<select name="sidebar-styling" class="form-control form-control-sm">
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
					<div class="col-md-5 control-label double-line">Sidebar Gradient</div>
					<div class="col-md-7">
						<select name="content-gradient" class="form-control form-control-sm">
							<option value="1">disabled</option>
							<option value="2">enabled</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Content Styling</div>
					<div class="col-md-7">
						<select name="content-styling" class="form-control form-control-sm">
							<option value="1">default</option>
							<option value="2">black</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-12"> <a href="javascript:;" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage">Reset Local Storage</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end theme-panel -->
		<!-- begin scroll to top btn --> <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<jsp:include page="template/includesJS.jsp"></jsp:include>
	<script src="resources/js/solicitante.js"></script>
	<!-- ================== END BASE JS ================== -->
</body>

</html>