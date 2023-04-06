<script>

$(document).ready(function() {

    uriBarChart = "{{ url('/api-support-monthlybyyear/2024') }}";
    uriPieChart = "{{ url('/api-incident-bycategory-monthinyear/2005/8') }}";
    var labels = [];
    var incidents = [];
    var requests = [];
    fetch(uriBarChart)
    .then(response => response.json())
    .then(data => {
      // console.log(data);
      // console.log(JSON.stringify(data.year));
      console.log(data);
      console.log(data.year);
      console.log(Object.values(data.incidents));
      console.log(data.requests);
      labels = data.months;
      incidents = data.incidents;
      requests = data.requests

    });

    console.log('==================');
    //console.log(incidents);
    //---------------------------------------------------
    //- SUPOORT INCIDENT & REQUEST MONTHLY DATA IN 1 YEAR
    //---------------------------------------------------
    var supportChartData1 = {
      // labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
      labels  : labels,
      datasets: [
        {
          label               : 'Incidents',
          backgroundColor     : 'rgba(60,141,188,0.9)',
          borderColor         : 'rgba(60,141,188,0.8)',
          pointRadius          : false,
          pointColor          : '#3b8bba',
          pointStrokeColor    : 'rgba(60,141,188,1)',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(60,141,188,1)',
          // data                : [28, 48, 40, 19, 86, 27, 90]
          data                : incidents
        },
        {
          label               : 'Requests',
          backgroundColor     : 'rgba(210, 214, 222, 1)',
          borderColor         : 'rgba(210, 214, 222, 1)',
          pointRadius         : false,
          pointColor          : 'rgba(210, 214, 222, 1)',
          pointStrokeColor    : '#c1c7d1',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(220,220,220,1)',
          // data                : [65, 59, 80, 81, 56, 55, 40]
          data                : requests
        },
      ]
    }

    //-------------------------------------------
    //- SUPPORT INCIDENT MONTHLY DATA BY CATEGORY
    //-------------------------------------------
    // Get context with jQuery - using jQuery's .get() method.
    var supportChartData2  = {
      labels: [
          'Chrome', 
          'IE',
          'FireFox', 
          'Safari', 
          'Opera', 
          'Navigator', 
      ],
      datasets: [
        {
          data: [700,500,400,600,300,100],
          backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'],
        }
      ]
    }


    //-------------
    //- BAR CHART -
    //-------------
    var barChartCanvas = $('#barChart').get(0).getContext('2d')
    var barChartData = jQuery.extend(true, {}, supportChartData1)
    var temp0 = supportChartData1.datasets[0]
    var temp1 = supportChartData1.datasets[1]
    barChartData.datasets[0] = temp1
    barChartData.datasets[1] = temp0

    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }

    var barChart = new Chart(barChartCanvas, {
      type: 'bar', 
      data: barChartData,
      options: barChartOptions
    })


    //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var pieData        = supportChartData2;
    var pieOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    var pieChart = new Chart(pieChartCanvas, {
      type: 'pie',
      data: pieData,
      options: pieOptions      
    })

}) //end document.ready

</script>
