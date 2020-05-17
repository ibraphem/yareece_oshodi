<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="content-type" content="text/html" />
	<meta name="author" content="lolkittens" />
     <meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

<!--Author      : @arboshiki-->
    <link rel="stylesheet" type="text/css"  href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css"  href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css"  href="css/bootstrap-grid.css"/>
    <link rel="stylesheet" type="text/css"  href="css/bootstrap-reboot.css"/>
    

	<title>YAREECEE SALES/STOCK INVENTORY MANAGER</title>
    <style>
    
    
    #inventory-invoice{
    padding: 30px;
}
#inventory-invoice a{text-decoration:none !important;}
.invoice {
    position: relative;
    background-color: #FFF;
    min-height: 680px;
    padding: 15px
}

.invoice header {
    padding: 10px 0;
    margin-bottom: 20px;
    border-bottom: 1px solid #3989c6
}

.invoice .company-details {
    text-align: right
}

.invoice .company-details .name {
    margin-top: 0;
    margin-bottom: 0
}

.invoice .contacts {
    margin-bottom: 20px
}

.invoice .invoice-to {
    text-align: left
}

.invoice .invoice-to .to {
    margin-top: 0;
    margin-bottom: 0
}

.invoice .invoice-details {
    text-align: right
}

.invoice .invoice-details .invoice-id {
    margin-top: 0;
    color: #3989c6
}

.invoice main {
    padding-bottom: 50px
}

.invoice main .thanks {
    margin-top: -100px;
    font-size: 2em;
    margin-bottom: 50px
}

.invoice main .notices {
    padding-left: 6px;
    border-left: 6px solid #3989c6
}

.invoice main .notices .notice {
    font-size: 1.2em
}

.invoice table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    margin-bottom: 20px
}

.invoice table td,.invoice table th {
    padding: 15px;
    background: #eee;
    border-bottom: 1px solid #fff
}

.invoice table th{
    white-space: nowrap;
    font-weight: 400;
    font-size: 16px;
    border:1px solid #fff;
}
.invoice table td{
    border:1px solid #fff;
}
.invoice table td h3 {
    margin: 0;
    font-weight: 400;
    color: #3989c6;
    font-size: 1.2em
}

.invoice table .tax,.invoice table .total,.invoice table .unit {
    text-align: right;
    font-size: 1.2em
}

.invoice table .no {
    color: #fff;
    font-size: 1.6em;
    background: #0c0028
}

.invoice table .unit {
    background: #ddd
}

.invoice table .total {
    background: #0c0028;
    color: #fff
}

.invoice table tfoot td {
    background: 0 0;
    border-bottom: none;
    white-space: nowrap;
    text-align: right;
    padding: 10px 20px;
    font-size: 1.2em;
    border-top: 1px solid #aaa
}

.invoice table tfoot tr:first-child td {
    border-top: none
}

.invoice table tfoot tr:last-child td {
    color: #3989c6;
    font-size: 1.4em;
    border-top: 1px solid #3989c6
}

.invoice table tfoot tr td:first-child {
    border: none
}

.invoice footer {
    width: 100%;
    text-align: center;
    color: #777;
    border-top: 1px solid #aaa;
    padding: 8px 0
}

/*@media print {
    .invoice {
        font-size: 11px!important;
        overflow: hidden!important;
    }*/
    


    .invoice footer {
        position: absolute;
        margin-top: 400px;
        page-break-after: always;
    }

    .invoice>div:last-child {
        page-break-before: always
    }
}
    </style>
</head>

<body>
    <div class="container-fluid">
<div id="inventory-invoice">


    <div class="invoice overflow-auto">
       <!-- <div style="min-width: 600px">--><div >
            <header>
                <div class="row">
                    <div class="col">
                    <img src="{{asset('images/yareecee1.png')}}" alt="receipt-logo" style="height: 150px;  margin-top: -25px;">
                         <!--   <img src="asset/images/yareecee1.png" style="height: 150px;" /> -->
                    </div>
                    <div class="col company-details" style="margin-top: -45px;">
                    <sup style="color: red;"><b>REG: 887372</b></sup>
                        <h2 class="name" style="color: #0c0028;" >
                            
                            YAREECE VENTURES
                        </h2>
                        <div><span style="color: red;"><b>Head Office:</b></span><span style="color: #0c0028;"> 13B, Baale Animashaun Road, Dalemo, Alakuko, Lagos</span></div>
                        <div><span style="color: red;"><b>Annex Office:</b></span><span style="color: #0c0028;"> 48, Fakoya Street, Egbeda, Akowonjo, Lagos</span></div>
                       <div> <span style="color: red;"><b>Telephone No:</b></span><span style="color: #0c0028;"> 08033674382, 08025719488</span></div>
                      <div>  <span style="color: red;"><b>Email:</b></span><span style="color: #0c0028;"> yareeceventures@gmail.com</span></div>
                    </div>
                </div>
            </header>
            <main>
                <div class="row contacts">
                    <div class="col invoice-to">
                        <div class="text-gray-light">INVOICE TO:</div>
                        <h2 class="to">{{ $sales->customer->name}}</h2>
                        <div class="address">@if(!empty($sales->customer->phone_number))
                            {{trans('sale.mobile')}} : {{$sales->customer->phone_number}}<br>
                            @endif</div>
                        <div class="email">{{trans('sale.payment_type')}}: {{$sales->payment_type}}</div>
                        
                    </div>
                    <div class="col invoice-details">
                        <h2 class="invoice-id" style="color: #0c0028;">YAR00{{$saleItemsData->sale_id}}</h2>
                        <div class="date">Date: {{ Carbon\Carbon::now() }}</div>
                        <div class="date">Attendant: {{$sales->user->name}}</div>
                    </div>
                </div>
                <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ITEM - MODEL</th>
                            <th scope="col">PRICE</th>
                            <th scope="col">QTY</th>
                            <th scope="col">TOTAL</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($saleItems as $value)
                            <tr>
                                <td scope="col" style="background:#0c0028; color:white">  <h5>{{$value->item->item_name}} - {{$value->item->size}}</h5></td>
                                <td scope="col"style="background:#0c0028;color:white;">   <h5>&#x20A6; &nbsp; {{$value->selling_price}}</h5></td>
                                <td scope="col"style="background:#0c0028;color:white">   <h5>{{$value->quantity}}</h5></td>
                                <td scope="col"style="background:#0c0028;color:white">   <h5>&#x20A6; &nbsp;{{$value->total_selling}}</h5></td>
                            </tr>
                        @endforeach
           
                    </tbody>
                    <tfoot>
                        <tr>
                            <td></td>
                            <td colspan="2" scope="col">SUBTOTAL</td>
                            <td>&#x20A6; {{ $sales->discount + $sales->grand_total - $sales->tax }}</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="2" scope="col">Discount</td>
                            <td> &#x20A6;  {{ $sales->discount }}</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="2" scope="col">PAYMENT</td>
                            <td>&#x20A6;  {{ $sales->payment }}</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="2" scope="col">TAX</td>
                            <td>&#x20A6;{{ $sales->tax }}</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="2" scope="col" style="color: red;">BALANCE</td>
                            <td style="color: red;">&#x20A6;  {{ $sales->dues }}</td>
                        </tr>
                    </tfoot>
                </table>
            </div>
                <div style="color: #0c0028;"><h3>Thank you!</h3></div>
                <div class="notices">
                    <div style="color: #0c0028;"><b>No return of money after payment.</b></div>
                    <div class="notice">Goods sold in good condition are not returnable.</div>
                </div>
            </main>
            <footer>
                 <dl class="dl-horizontal" style="margin-bottom: 40px;">
                <div style="color: red;" ><b>Dealers In All Kinds Of Electronic Appliances And General Contractors</b></div>
                <div style="color: red;"><b>Refridgerator, Freezers, Home Theatre, Generator, LCD TV, Air Condition,Electric Iron, Blender Kettle ETC</b></div>
            </dl>
            </footer>
        </div>
        <div></div>
    </div>
</div>

<!--<script>
 $('#printInvoice').click(function(){
            Popup($('.invoice')[0].outerHTML);
            function Popup(data) 
            {
                window.print();
                return true;
            }
        });
</script>-->
<hr>
<div class="toolbar hidden-print">
        <div class="text-right" style="margin-right: 40px;">
            <button id="printInvoice" class="btn btn-info"><i class="fa fa-print"></i> Print</button>
            <a href="{{ url('/sales') }}" type="button" class="btn btn-primary">{{trans('sale.new_sale')}}</a>
           <!-- <button class="btn btn-info"><i class="fa fa-file-pdf-o"></i> Export as PDF</button> -->
        </div>
    </div>
    <script>
 $('#printInvoice').click(function(){
            Popup($('.invoice')[0].outerHTML);
            function Popup(data) 
            {
                window.print();
                return true;
            }
        });
</script>
</div>
</body>
</html>