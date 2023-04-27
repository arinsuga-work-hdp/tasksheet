<script>

$(document).ready(function() {


    var barYear = 2024;
    runBarChart("{{ url('/api-support-monthlybyyear/" + barYear + "') }}");

    var pieYear = 2005;
    var pieMonth = 8;
    runPieChart("{{ url('/api-incident-bycategory-monthinyear/" + pieYear + "/" + pieMonth + "') }}");


    function runBarChart(url) {

        //Bar Chart
        fetch(url)
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
      
    } //end method

    function runPieChart(url) {
      
        //Pie Chart
        fetch(url)
        .then(response => response.json())
        .then(data => {

          var labelScheme = [ 'Chrome', 'IE', 'FireFox', 'Safari', 'Opera', 'Navigator'];
          var dataScheme = [700,500,400,600,300,100];

          //console.log(data);
          renderPiechart(labelScheme, dataScheme);

        });

    } //end method


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
    function renderPiechart(labels, data) {

        var lbScheme = labels;
        var dtScheme = data;
        var bgScheme = [];
        var colorScheme = [
          '#FF2000', '#FF7C00', '#F52394', '#800080', '#0062C6', '#00B2D4',
          '#00AB00', '#90E200', '#FFCF00', '#7F00FF', '#C4C4C4', '#593110',
          '#ff4c32', '#ff9632', '#f64fa9', '#cc00cc', '#0580ff', '#10d8ff',
          '#00ee00', '#acff1b', '#ffd832', '#9832ff', '#cfcfcf', '#9d561c',
        ];

        console.log(colorScheme.length);
        for (let i = 0; i < dtScheme.length; i++) {
          
          bgScheme.push(colorScheme[i]);
          console.log(colorScheme[i]);

        } //end loop

        //Prepare
        var supportChartData2  = {
          labels: lbScheme,
          datasets: [
            {
              data: dtScheme,
              backgroundColor : bgScheme,
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
