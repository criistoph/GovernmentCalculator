<style>
.panel-inverse>.panel-heading {
	background: #009591 !important;
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
				<li class="has-sub"><a href="home"> <i
						class="fa fa-th-large"></i> <span>Solicitante</span>
				</a></li>
				<li class="has-sub"><a href="aprobador"> <i
						class="fa fa-th-large"></i> <span>Aprobador</span>
				</a></li>
				<li class="has-sub"><a href="estatus"> <i class="fa fa-hdd"></i>
						<span>Estatus</span>
				</a></li>
				<li class="has-sub"><a href="solicitante"> <i
						class="fa fa-th-large"></i> <span>Solicitante v2</span>
				</a></li>

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
			<h1 class="page-header">Datos solicitante</h1>
			<!-- end page-header -->




			<!-- ================== BEGIN BOTON ================== -->


			<div class="row">
				<div class="col-lg-6">
					<center>
						<a href="#" class="btn btn-lg btn-primary"> <i
							class="fa fa-file-excel fa-2x pull-left m-r-10 text-black"></i> <b>Cargar
								Archivo Excel</b><br /> <small>Cargar información</small>
						</a>
					</center>
				</div>
				<div class="col-lg-6">
					<center>
					
						<a id="Agregar" type="button" data-click="swal-primary"
							class="btn btn-lg btn-primary"> <i
							class="fa fa-check-square fa-2x pull-left m-r-10 text-black"></i>
							<b>Guardar Información</b><br /> <small>Enviar
								Información</small>
						</a>
					</center>
				</div>

			</div>
			<div>
				<br>
			</div>
			<!-- ================== END BOTON ================== -->








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
										<th width="1%" data-orderable="false">Enero</th>
										<th class="text-nowrap">Febreo</th>
										<th class="text-nowrap">Marzo</th>
										<th class="text-nowrap">Abril</th>
										<th class="text-nowrap">Mayo</th>
										<th class="text-nowrap">Junio</th>
										<th class="text-nowrap">Julio</th>
										<th class="text-nowrap">Agosto</th>
										<th class="text-nowrap">Septiembre</th>
										<th class="text-nowrap">Octubre</th>
										<th class="text-nowrap">Noviembre</th>
										<th class="text-nowrap">Diciembre</th>
										<th class="text-nowrap">FY</th>
										<th class="text-nowrap">Promedio</th>
									</tr>
								</thead>
								
								<tbody>
									<tr class="odd gradeX">
										<td width="1%" class="f-s-600 text-inverse">1</td>
										<td width="1%" class="f-s-600 text-inverse">10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>10000</td>
										<td>12000</td>
										<td>10000</td>


									</tr>
									<tr class="even gradeC">
										<td width="1%" class="f-s-600 text-inverse">2</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>cris</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeA">
										<td width="1%" class="f-s-600 text-inverse">4</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td width="1%" class="f-s-600 text-inverse">5</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeA">
										<td width="1%" class="f-s-600 text-inverse">6</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">7</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>15</td>
										<td>17</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">8</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>15</td>
										<td>17</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">9</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>15</td>
										<td>17</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">10</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">11</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>15</td>
										<td>17</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">12</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">13</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">14</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>15</td>
										<td>17</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">15</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
										<td>15</td>
										<td>17</td>
									</tr>

								</tbody>
							</table>
						</div>
						<!-- end panel-body -->
					</div>
					<!-- end panel -->
				</div>
				<!-- end panel -->


				<!-- start panel -->
				<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4" class="ejemplo">

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
							<h4 class="panel-title">ORDEN DE COMPRA MAYORISTA</h4>
						</div>
						<!-- end panel-heading -->

						<!-- begin panel-body -->
						<div class="panel-body">
							<table id="data-table-autofill3"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="1%"></th>
										<th width="1%" data-orderable="false">SKU</th>
										<th class="text-nowrap">Producto</th>
										<th class="text-nowrap">Cliente</th>
										<th class="text-nowrap">Institucion</th>
										<th width="1%" data-orderable="false">Enero</th>
										<th class="text-nowrap">Febreo</th>
										<th class="text-nowrap">Marzo</th>
										<th class="text-nowrap">Abril</th>
										<th class="text-nowrap">Mayo</th>
										<th class="text-nowrap">Junio</th>
										<th class="text-nowrap">Julio</th>
										<th class="text-nowrap">Agosto</th>
										<th class="text-nowrap">Septiembre</th>
										<th class="text-nowrap">Octubre</th>
										<th class="text-nowrap">Noviembre</th>
										<th class="text-nowrap">Diciembre</th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd gradeX">
										<td width="1%" class="f-s-600 text-inverse">1</td>
										<td>1000926</td>
										<td>EMEND 125MG</td>
										<td>IMSS</td>
										<td>(IMSS)</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeC">
										<td width="1%" class="f-s-600 text-inverse">2</td>
										<td>1959384</td>
										<td>IMPLANON</td>
										<td>IMSS</td>
										<td>(IMSS)</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>1024433</td>
										<td>ISENTRESS</td>
										<td>IMSS</td>
										<td>(IMSS)</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeA">
										<td width="1%" class="f-s-600 text-inverse">4</td>
										<td>1002400</td>
										<td>MMR</td>
										<td>IMSS</td>
										<td>(IMSS)</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr><tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td>1032810</td>
										<td>TEMGESIC</td>
										<td>IMSS</td>
										<td style="overflow-x: scroll; max-width: 2px;">(IMSS)</td>
										<td>3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>

								</tbody>
							</table>
						</div>
						<!-- end panel-body -->
					</div>
					<!-- end panel -->
				</div>
				<!-- end panel -->


				<!-- start panel -->
				<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4" class="ejemplo">

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
							<h4 class="panel-title">INVENTARIO INSTITUTO</h4>
						</div>
						<!-- end panel-heading -->

						<!-- begin panel-body -->
						<div class="panel-body">
							<table id="data-table-autofill"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="1%"></th>
										<th width="1%" data-orderable="false">Enero</th>
										<th class="text-nowrap">Febreo</th>
										<th class="text-nowrap">Marzo</th>
										<th class="text-nowrap">Abril</th>
										<th class="text-nowrap">Mayo</th>
										<th class="text-nowrap">Junio</th>
										<th class="text-nowrap">Julio</th>
										<th class="text-nowrap">Agosto</th>
										<th class="text-nowrap">Septiembre</th>
										<th class="text-nowrap">Octubre</th>
										<th class="text-nowrap">Noviembre</th>
										<th class="text-nowrap">Diciembre</th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd gradeX">
										<td width="1%" class="f-s-600 text-inverse">1</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeC">
										<td width="1%" class="f-s-600 text-inverse">2</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeA">
										<td width="1%" class="f-s-600 text-inverse">4</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td width="1%" class="f-s-600 text-inverse">5</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeA">
										<td width="1%" class="f-s-600 text-inverse">6</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">7</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">8</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">9</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">10</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">11</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">12</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">13</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">14</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">15</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>

								</tbody>
							</table>
						</div>
						<!-- end panel-body -->
					</div>
					<!-- end panel -->
				</div>
				<!-- end panel -->



				<!-- start panel -->
				<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4" class="ejemplo">

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
							<h4 class="panel-title">DOH</h4>
						</div>
						<!-- end panel-heading -->

						<!-- begin panel-body -->
						<div class="panel-body">
							<table id="data-table-autofill2"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="1%"></th>
										<th width="1%" data-orderable="false">Enero</th>
										<th class="text-nowrap">Febreo</th>
										<th class="text-nowrap">Marzo</th>
										<th class="text-nowrap">Abril</th>
										<th class="text-nowrap">Mayo</th>
										<th class="text-nowrap">Junio</th>
										<th class="text-nowrap">Julio</th>
										<th class="text-nowrap">Agosto</th>
										<th class="text-nowrap">Septiembre</th>
										<th class="text-nowrap">Octubre</th>
										<th class="text-nowrap">Noviembre</th>
										<th class="text-nowrap">Diciembre</th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd gradeX">
										<td width="1%" class="f-s-600 text-inverse">1</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeC">
										<td width="1%" class="f-s-600 text-inverse">2</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeA">
										<td width="1%" class="f-s-600 text-inverse">4</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="odd gradeA">
										<td width="1%" class="f-s-600 text-inverse">5</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="even gradeA">
										<td width="1%" class="f-s-600 text-inverse">6</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">7</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">8</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">9</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">10</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">11</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">12</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">13</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">14</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>12</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
									</tr>
									<tr class="gradeA">
										<td width="1%" class="f-s-600 text-inverse">15</td>
										<td width="1%" class="f-s-600 text-inverse">3</td>
										<td>3.5</td>
										<td>4.0</td>
										<td>95</td>
										<td>4</td>
										<td>5</td>
										<td>10</td>
										<td>Cris</td>
										<td>11</td>
										<td>14</td>
										<td>15</td>
										<td>17</td>
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
		$(document)
				.ready(
						function() {
							App.init();
							Notification.init();

							/* $('#data-table-autofill thead tr').clone(true).appendTo( '#data-table-autofill thead' );
							$('#data-table-autofill thead tr:eq(1) th').each( function (i) {
							    var title = $(this).text();
							    $(this).html( '<input type="text" placeholder="Buscar '+title+'" />' );
							    $( 'input', this ).on( 'keyup change', function () {
							        if ( table.column(i).search() !== this.value ) {
							            table.column(i).search( this.value ).draw();
							        }
							    });
							}); */

							$('#data-table-autofill').DataTable({
								"scrollX" : true,
								"searching": false,
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

							$("#data-table-autofill2").DataTable({
								"scrollX" : true,
								"searching": false,
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
							$("#data-table-autofill3").DataTable({
								"scrollX" : true,
								"searching": false,
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
							/* $('.search-input-text').on( 'keyup click', function () {   // for text boxes
							    var i =$(this).attr('data-column');  // getting column index
							    var v =$(this).val();  // getting search input value
							    var table = $('#data-table-autofill4').DataTable();
							    table.columns(i).search(v).draw();
							} ); */
							/* editor = new $.fn.dataTable.Editor({
								table : "#example"
							}); */

							/* $("#example").DataTable({
							
							})

							$('#example').on( 'click', 'tbody td:not(:first-child)', function (e) {
							      editor.inline( this );
							});
							
							$("#example").DataTable({
								dom : "Bfrtip",		
								select: {
									style: 'os',
									selector: 'td:first-child'
								},
								buttons: [
									{extend: "create", editor: editor},
									{extend: "edit", editor: editor},
									{extend: "remove", editor: editor}
								]
							})
							 */

						});
	</script>
</body>
</html>
