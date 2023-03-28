
<!-- TICKET DAN ABSENSI -->
<div class="row">
    <div class="col-lg-5 col-sm-12">
        <!-- small box -->
        <div class="small-box bg-primary">
            <div class="inner">
                <h3>Open Ticket</h3>

                <p>
                    <div class="row">
                        <div class="col-md-2">
                            Incident
                        </div>
                        <div class="col-md-10">
                            : {{ $viewModel->data->ticket->incident }}
                        </div>
                    </div>
                </p>

                <p>
                    <div class="row">
                        <div class="col-md-2">
                            Request
                        </div>
                        <div class="col-md-10">
                            : {{ $viewModel->data->ticket->request }}
                        </div>
                    </div>
                </p>

                <p>
                    <div class="row">
                        <div class="col-md-2">
                            Pending
                        </div>
                        <div class="col-md-10">
                            : {{ $viewModel->data->ticket->pending }}
                        </div>
                    </div>
                </p>
            </div>
            <div class="icon">
                <i class="fa fa-ticket"></i>
            </div>
        </div>
    </div>

    <div class="col-lg-7 col-sm-12">
        <div class="card bg-warning">
            <div class="card-header">
                <h3 class="card-title">Absen Karyawan</h3>
            </div>

            <div class="card-body table-responsive p-0" style="height: 300px;">

            </div>
        </div>
    </div>
</div>

<!-- MY TASK -->
<div class="row" style="height: ">
    <div class="col-lg-12 col-sm-12">
        <div class="card bg-pink">
            <div class="card-header">
                <h3 class="card-title">My Task</h3>
            </div>

            <div class="card-body table-responsive p-0" style="height: 300px;">

            <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr class="bg-pink">
                      <th class="bg-pink">ID</th>
                      <th class="bg-pink">User</th>
                      <th class="bg-pink">Date</th>
                      <th class="bg-pink">Status</th>
                      <th class="bg-pink">Reason</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>183</td>
                      <td>John Doe</td>
                      <td>11-7-2014</td>
                      <td><span class="tag tag-success">Approved</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
                  </tbody>
                </table>


            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6 col-sm-12">
        <!-- small box -->
        <div class="small-box bg-info">
            <div class="inner">
                <div style="height: 250px;">
                    <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
                <p style="margin-top: 20px;">Grafik Bar - Incident dan Request per Bulan selama 1 tahun</p>

            </div>
        </div>
    </div>

    <div class="col-lg-6 col-sm-12">
        <!-- small box -->
        <div class="small-box bg-success">
            <div class="inner">

                <div style="height: 250px;">
                    <canvas id="pieChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
                <p style="margin-top: 20px;">Pie Chart - Incident berdasarkan sub category dalam 1 bulan</p>
            </div>
        </div>
    </div>

</div>

<div class="row">
    <div class="col-lg-12 col-sm-12">
        <!-- small box -->
        <div class="small-box bg-pink">
            <div class="inner">
                <h3>5</h3>
                <p>Project / Action Plan yang sedang berjalan - Status Project</p>
            </div>
            <div class="icon">
                <i class="fa fa-tasks"></i>
            </div>

            <a href="#" class="small-box-footer">View Detail <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
</div>
