<link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/sh-print.css">
<?php
$currency_symbol = $this->customlib->getHospitalCurrencyFormat();
?>

<style>
	.token_div {
		font-size: 34px;
		margin: auto;
		width: fit-content;
	}

	.token_div p {
		border: 1px solid black;
		border-radius: 100px;
		padding: 15px;
		margin-top: 10px;
	}
</style>
<div class="print-area">
	<div class="row">
		<div class="col-md-12">
			<?php if (!empty($print_details[0]['print_header'])) { ?>
				<div class="pprinta4">
					<img src="<?php
										if (!empty($print_details[0]['print_header'])) {
											echo base_url() . $print_details[0]['print_header'] . img_time();
										}
										?>" class="img-responsive" style="height:100px; width: 100%;">
				</div>
			<?php } ?>
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12" style="padding-top:10px">
							<table class="noborder_table">
								<tr>
									<div class="text-center mt-5 token_div" style="font-size: 34px;">
										<p><?php echo $result['token_id'] ?></p>
									</div>
								</tr>
								<tr>
									<td>Date</td>
									<td><?php echo date('d-m-y', strtotime($result["date"])) ?></td>
								</tr>
								<tr >
									<td>Patient</td>
									<td><span id='patient_name_view'><?php echo $result['patients_name'] ?></span></td>
								</tr>
								<tr>
									<th>Doctor</th>
									<th>
										<?php echo $result['name'] . " " . $result['surname']  ?>
									</th>
								</tr>
								<tr><br></tr>
								<tr>
									<td>Fees Paid</td>
									<td><?php if ($result['amount'] != "") {
												echo  $currency_symbol . '.' . $result['amount'] + 50;
											} else {
												echo $currency_symbol . '.' . '0.00';
											} ?></td>
								</tr>
							</table>
							<hr>

							<table class="noborder_table">
								<tbody>
									<tr>
										<td>Date / Time</td>
										<td><?php echo date('d-m-y h:i:s A', strtotime($result["date"])) ?></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-12">
		<p>
			<?php
			if (!empty($print_details[0]['print_footer'])) {
				echo $print_details[0]['print_footer'];
			}
			?>
		</p>
	</div>
</div>

<?php $doc_id = $result['employee_id'];
echo "<script> getDoctorFees(" . $doc_id . ")</script>";
?>
<script>
	function getDoctorFees(object) {
		let doctor_id = object;
		$.ajax({
			url: baseurl + 'admin/appointment/getDoctorFees/',
			type: "POST",
			data: {
				doctor_id: doctor_id
			},
			dataType: 'json',
			success: function(res) {
				$("#doctor_fees").val(res.fees);
			}
		})
	}
</script>