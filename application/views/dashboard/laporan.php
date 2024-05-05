<div class="card mb-3">
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-striped table-bordered" id="exampleLaporan" width="100%">
				<thead>
					<tr>
						<th>No</th>
						<th>Tanggal</th>
						<th>Nik</th>
						<th>Nama</th>
						<th>Isi Laporan</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<?php $no = 1;
					foreach ($list as $pp) { ?>
						<tr>
							<td><?= $no++ ?></td>
							<td><?= $pp['tgl'] ?></td>
							<td><?= $pp['nik'] ?></td>
							<td><?= $pp['nama'] ?></td>
							<td><?= $pp['isi_laporan'] ?></td>
							<td class="text-capitalize"><?= $pp['status'] ?></td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
</div>