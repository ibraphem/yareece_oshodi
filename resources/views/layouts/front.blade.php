<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
	<meta name="csrf-token" content="{{ csrf_token() }}">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  @if(!empty(DB::table('flexible_pos_settings')->first()->fevicon_path))
  <link rel="icon" href="{{asset(DB::table('flexible_pos_settings')->first()->fevicon_path)}}"  />
  @else
  <link rel="icon" href="{{asset('images/logo-top.png')}}"  />
  @endif
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
  <!-- DataTables -->
  <link rel="stylesheet" href="{{asset('/css/dataTables.bootstrap.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('dist/css/AdminLTE.min.css')}}">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="{{asset('dist/css/skins/_all-skins.min.css')}}">
  <link rel="stylesheet" href="{{asset('dist/css/blue.css')}}">
<link href="{{ asset('/css/style.css') }}" rel="stylesheet">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <style>
        	.wrapper{

        	}
        	
        	#title{
  text-align: center;
  color:white;
  font-size:30px;
  text-transform: uppercase;
  margin-top: 20px;
}
.hover-table-layout {
  display: -webkit-box;
  display: -moz-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
     -webkit-flex-wrap: wrap;
    -moz-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
  max-width:1200px;
  margin:0 auto;
}
.listing-item {
   display: block;
    width:100%;
    
    margin-bottom:20px;
    background: #fff;
    border-radius:10px;
    z-index:0;
    cursor:pointer;
    margin: 0 auto;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    transition: all 0.3s ease;
        -webkit-box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.10);
    -moz-box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.10);
    box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.10);

}
.listing-item:hover,  .listing-item.active{
    -webkit-transform: scale(1.03);
    -moz-transform: scale(1.03);
    transform: scale(1.03);
        -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    transition: all 0.3s;
    z-index:2;

}
.listing-item .listing{
    padding:2px;
    position:relative;  
}
.listing-item .listing:before{
    content:"";
    position:absolute;
    top:-15px;
    left:-o-calc(50% - 15px);
    left:-moz-calc(50% - 15px);
    left:-webkit-calc(50% - 15px);
    left:calc(50% - 15px);
    border-bottom:20px solid #fff;
    border-left:20px solid transparent;
    border-right:20px solid transparent;
}
    figure.image img {
        width:100%;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
}
figure.image {
    position: relative;
    margin: 0;
    padding: 0;
}
figure.image figcaption {
    position: absolute;
    top: 0;
    width: 100%;
    text-align: center;
    bottom: 4px;
    background: rgba(0,0,0,0.6);
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;

}


#lit {
    width: 600px;
}

.he{
    color: red;
    font-size: 20px;
}

td{
    padding-right: 5px;
    padding-left: 5px;
}


figcaption .caption{
    position:relative;
    top:50%;
    -moz-transform:translateY(-50%);
    -webkit-transform:translateY(-50%);
    transform:translateY(-50%);

}
figcaption h1{
    color:white;
    font-weight:bold;
    font-size:16px;
  text-transform: uppercase;
}
figcaption p{
  color:white;
  font-size:12px;
}
.listing h4 {
   
    font-size: 13px;
    text-align: center;
    padding: 5px 10px;
    font-weight: bold;
}
.listing h4:not(:last-child){
   border-bottom: 1px solid #ccc;
}
.listing-item:hover figure.image figcaption{
       background: rgba(195, 39, 43, 0.6);
}
@media only screen and (min-width:540px){
    .listing-item {
   display: block;
   width: -webkit-calc(100%/3);
   width: -moz-calc(100%/3);
    width: calc(100%/3);
    }
}
@media only screen and (min-width:1024px){
    .hover-table-layout{
        padding: 30px;
    }
}

.bod{
    background: #0c0028;
}

#but {
  background-color: red; /* Green */
  border: none;
  border-radius: 5px;  
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: #0c0028; 
  color: #fff; 
  border: 2px solid ##0c0028;
}

.button1:hover {
  background-color: red;
  color: white;
}
        </style>
</head>
<body class="hold-transition login-page">

  <!-- Content Wrapper. Contains page content -->
  @yield('content')

  <!-- /.content-wrapper -->

  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  

<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="{{asset('js/app.js')}}"></script>

<!-- DataTables -->
<script src="{{asset('js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('js/dataTables.bootstrap.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('dist/js/adminlte.min.js')}}"></script>

<!-- page script -->
@yield('script')
<script src="{{asset('dist/js/icheck.min.js')}}"></script>
<script>
  $(function () {
    $('input').icheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
