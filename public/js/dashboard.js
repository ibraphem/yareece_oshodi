// for sales and outstanding graphs
var task = document.getElementById("chartData").value;
var taskVal = JSON.parse(task);
var data = taskVal,
    config = {
        data: data,
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Outstanding', 'Payments'],
        fillOpacity: 0.6,
        hideHover: 'auto',
        behaveLikeLine: true,
        resize: true,
        pointFillColors:['#ffffff'],
        pointStrokeColors: ['black'],
        lineColors:['red','#44c4c0']
    };
config.element = 'area-chart';
Morris.Area(config);