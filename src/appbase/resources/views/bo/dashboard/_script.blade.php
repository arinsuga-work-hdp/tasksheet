<script>

$(document).ready(function() {

    //Bar Chart
    fetch("{{ url('/api-support-monthlybyyear/2024') }}")
    .then(response => response.json())
    .then(data => {
      let labels = [];
      let incidents = [];
      let requests = [];

      labels = data.months;
      incidents = data.incidents;
      requests = data.requests;

      renderBarchart(labels, incidents, requests);

    });

    //Pie Chart
    fetch("{{ url('/api-incident-bycategory-monthinyear/2005/8') }}")
    .then(response => response.json())
    .then(data => {

      console.log(data);

    });


    //---------------------------------------------------
    //- SUPOORT INCIDENT & REQUEST MONTHLY DATA IN 1 YEAR
    //---------------------------------------------------
    function renderBarchart(labels, incidents, requests) {

        //Prepare
        var supportChartData1 = {
          labels  : labels,
          datasets: [
            {
              label               : 'Incidents',
              backgroundColor     : '#f39c12', //'rgba(60,141,188,0.9)',
              borderColor         : 'rgba(60,141,188,0.8)',
              pointRadius          : false,
              pointColor          : '#3b8bba',
              pointStrokeColor    : 'rgba(60,141,188,1)',
              pointHighlightFill  : '#fff',
              pointHighlightStroke: 'rgba(60,141,188,1)',
              data                : incidents
            },
            {
              label               : 'Requests',
              backgroundColor     : '#00a65a', //'rgba(210, 214, 222, 1)',
              borderColor         : 'rgba(210, 214, 222, 1)',
              pointRadius         : false,
              pointColor          : 'rgba(210, 214, 222, 1)',
              pointStrokeColor    : '#c1c7d1',
              pointHighlightFill  : '#fff',
              pointHighlightStroke: 'rgba(220,220,220,1)',
              data                : requests
            },
          ]
        }

        //Data
        var barChartCanvas = $('#barChart').get(0).getContext('2d')
        var barChartData = jQuery.extend(true, {}, supportChartData1)
        var temp0 = supportChartData1.datasets[0]
        var temp1 = supportChartData1.datasets[1]
        barChartData.datasets[0] = temp1
        barChartData.datasets[1] = temp0

        //Option
        var barChartOptions = {
          responsive              : true,
          maintainAspectRatio     : false,
          datasetFill             : false
        }

        //Render
        var barChart = new Chart(barChartCanvas, {
          type: 'bar', 
          data: barChartData,
          options: barChartOptions
        })


    } //end method

    //-------------------------------------------
    //- SUPPORT INCIDENT MONTHLY DATA BY CATEGORY
    //-------------------------------------------
    function renderPiechart() {

        //Prepare
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

        //Data
        var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
        var pieData        = supportChartData2;
        var pieOptions     = {
          maintainAspectRatio : false,
          responsive : true,
        }

        //Render
        var pieChart = new Chart(pieChartCanvas, {
          type: 'pie',
          data: pieData,
          options: pieOptions      
        })

    } //end method


}) //end document.ready

</script>
