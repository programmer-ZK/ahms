<link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/sh-print.css">
<?php
$currency_symbol = $this->customlib->getHospitalCurrencyFormat();
?>
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
									<div class="text-center mt-5" style="font-size: 60px; font-weight: bolder;">
										<p><?php echo $result['token_id'] ?></p>
									</div>
								</tr>
								<tr>
									<br>
								</tr>
								<tr>
									<div class="text-center mt-5" style="font-size: 34px;">
										<p><?php echo $result['patients_name'] ?></p>
									</div>
								</tr>
								<tr>
									<th>Doctor</th>
									<td class="text-capitalize"><span id='patient_name_view'><?php echo  $result['name'] . " " . $result['surname']  ?></span></td>
									<th><?php echo $this->lang->line("age"); ?></th>
									<td> <?php echo $this->customlib->getPatientAge($result['age'], $result['month'], $result['day']); ?> </td>
								</tr>
								<tr>
									<br>
								</tr>

								<tr>
									<th><?php echo $this->lang->line('shift'); ?></th>
									<td><?php echo $result['global_shift_name'] ?></td>
									<th>Date</th>
									<td><?php echo $this->customlib->YYYYMMDDHisTodateFormat($result["date"]); ?></td>
								</tr>

								<tr>
								</tr>

								<tr>
									<th></th>
									<td></td>
								</tr>
							</table>
						</div>
					</div>

					<hr style="height: 1px; clear: both;margin-bottom: 10px; margin-top: 10px" />
					<h4 class="font-bold">&nbsp;<?php echo $this->lang->line("payment_details"); ?></h4>
					<div class="row">
						<div class="col-md-12">
							<table class="print-table">
								<thead>
									<tr>
										<td><strong>Amount (Rs)</strong></td>
										<td></td>
										<td class="text-right" id="doctor_fees">
											<?php if ($result['amount'] != "") {
												echo  $currency_symbol . '.' . $result['amount'] - 50;
											} else {
												echo $currency_symbol . '.'  . '0.00';
											} ?> </td>
									</tr>

								</thead>
								<tbody>
									<tr class="line">
										<td class=""><strong>Service Charges</strong></td>
										<td></td>
										<td class="text-right">Rs.50</td>
									</tr>
									<tr class="line">
										<td class=" "><strong>Total</strong></td>
										<td></td>
										<td class="text-right" id="doctor_fees">
											<?php if ($result['amount'] != "") {
												echo  $currency_symbol . '.' . $result['amount'];
											} else {
												echo $currency_symbol . '.' . '0.00';
											} ?> </td>
									</tr>
									<tr>
										<th>Printed By:</th>
										<td></td>
										<td class="text-capitalize text-right">
											<?php echo $this->customlib->getAdminSessionUserName(); ?>
										</td>
									</tr>

									<?php if ($result['appointment_status'] == 'cancel') { ?>
										<tr>
											<th>Status :</th>
											<td></td>
											<td class="text-capitalize text-right">
												Cancelled
											</td>
										</tr>
									<?php } ?>

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