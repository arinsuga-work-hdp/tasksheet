
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
                <h3 class="card-title">Absen Karyawan - Masih data dummy</h3>
            </div>

            <div class="card-body table-responsive p-0" style="height: 300px;">
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr class="bg-warning">
                      <th class="bg-warning">Harin</th>
                      <th class="bg-warning">Tanggal</th>
                      <th class="bg-warning">Masuk</th>
                      <th class="bg-warning">Pulang</th>
                      <th class="bg-warning">Lama</th>
                      <th class="bg-warning">Lembur</th>
                      <th class="bg-warning">Catatan</th>
                      <th class="bg-warning">Keterangan</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Senin</td>
                      <td>3 Apr 2023</td>
                      <td>08:00</td>
                      <td>17:00</td>
                      <td>8</td>
                      <td>0</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>Selasa</td>
                      <td>4 Apr 2023</td>
                      <td>08:00</td>
                      <td>17:00</td>
                      <td>8</td>
                      <td>0</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>Rabu</td>
                      <td>5 Apr 2023</td>
                      <td>08:00</td>
                      <td>17:00</td>
                      <td>8</td>
                      <td>0</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>Kamis</td>
                      <td>6 Apr 2023</td>
                      <td>08:00</td>
                      <td>17:00</td>
                      <td>8</td>
                      <td>0</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>Senin</td>
                      <td>10 Apr 2023</td>
                      <td>08:00</td>
                      <td>17:00</td>
                      <td>8</td>
                      <td>0</td>
                      <td></td>
                      <td></td>
                    </tr>
                  </tbody>
                </table>
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
                      <th class="bg-pink">No</th>
                      <th class="bg-pink">Status</th>
                      <th class="bg-pink">Kategori</th>
                      <th class="bg-pink">Subjek</th>
                      <th class="bg-pink">Deskripsi</th>
                      <th class="bg-pink">Mulai</th>
                      <th class="bg-pink">Selesai</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($viewModel->data->mytask as $no => $item)
                    <tr>
                      <td>{{ $no+1 }}</td>
                      <td>{{ $item->activitystatus_name }}</td>
                      <td>{{ $item->tasktype_name }}</td>
                      <td>{{ $item->subject }}</td>
                      <td>{{ $item->description }}</td>
                      <td>{{ $item->startdt }}</td>
                      <td>{{ $item->enddt }}</td>
                    </tr>
                    @endforeach
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

<!-- PROJECT -->
<div class="row">
    <div class="col-lg-12 col-sm-12">

        <div class="card bg-pink">
            <div class="card-header">
                <h3 class="card-title">Project / Action Plan</h3>
            </div>

            <div class="card-body table-responsive p-0" style="height: 300px;">
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr class="bg-pink">
                      <th class="bg-pink">No</th>
                      <th class="bg-pink">Status</th>
                      <th class="bg-pink">Jenis Project</th>
                      <th class="bg-pink">Project</th>
                      <th class="bg-pink">Subjek</th>
                      <th class="bg-pink">Deskripsi</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($viewModel->data->project as $no => $item)
                    <tr>
                      <td>{{ $no+1 }}</td>
                      <td>{{ $item->activitystatus_name }}</td>
                      <td>{{ $item->tasktype_name }}</td>
                      <td>{{ $item->tasksubtype1_name }}</td>
                      <td>{{ $item->subject }}</td>
                      <td>{{ $item->description }}</td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
            </div>
        </div>

    
    </div>
</div>
