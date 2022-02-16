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
									<div class="text-center mt-5" style="font-size: 34px;">
										<p><?php echo $result['token_id'] ?></p>
									</div>
								</tr>
								<tr>
									<th>Patient</th>
									<td><span id='patient_name_view'><?php echo $result['patients_name'] ?></span></td>
									<th><?php echo $this->lang->line("age"); ?></th>
									<td> <?php echo $this->customlib->getPatientAge($result['age'], $result['month'], $result['day']); ?> </td>
								</tr>
								<tr>
									<br>
								</tr>
								<tr>
									<div class="text-center mt-5" style="font-size: 34px;">
										<p> <?php echo "<strong>Dr. </strong>" . $result['name'] . " " . $result['surname']  ?></p>
									</div>
								</tr>
								<tr><br></tr>
								<tr>
									<th>Appt-ID</th>
									<td><?php echo $result['appointment_no'] ?></td>

									<th>Date</th>
									<td><?php echo $this->customlib->YYYYMMDDHisTodateFormat($result["date"]); ?></td>
								</tr>
								<!-- <tr>
									<th width="20%"><?php echo $this->lang->line('email'); ?></th>
									<td width="35%"><span id='emails_view'><?php echo $result['patient_email'] ?></span></td>
									<th><?php echo $this->lang->line('appointment_priority'); ?></th>
									<td><?php echo $result['appoint_priority'] ?></td>
									<th><?php echo $this->lang->line('live_consultation'); ?></th>
									<td><?php echo $this->lang->line($result['live_consult']); ?></td>
								</tr> -->

								<tr>
									<!-- <th width="20%"><?php echo $this->lang->line('phone'); ?></th>
									<td width="35%"><span id="phones_view"><?php echo $result['patient_mobileno'] ?></span></td> -->
									<!-- <th><?php echo $this->lang->line('shift'); ?></th>
									<td><?php echo $result['global_shift_name'] ?></td> -->
								</tr>
								<!-- <tr>
									<th></th>
									<td></td>
									<th><?php echo $this->lang->line('slot'); ?></th>
									<td><?php echo $result['doctor_shift_name'] ?></td>

								</tr> -->
								<tr>
									<th></th>
									<td></td>

									<!-- <th><?php echo $this->lang->line('status'); ?></th>
									<td><?php echo $this->lang->line($result['appointment_status']); ?></td> -->
								</tr>
								<!-- <?php if ($result['payment_mode'] == 'Cheque') {  ?>
									<tr id="payrow">
										<th width="20%"><?php echo $this->lang->line('cheque_no'); ?></th>
										<td width="35%"><span id='spn_chequeno'><?php echo $result['cheque_no'] ?></span></td>
										<th width="20%"><?php echo $this->lang->line('cheque_date'); ?></th>
										<td width="35%"><span id="spn_chequedate"><?php echo $this->customlib->YYYYMMDDTodateFormat($result['cheque_date'], $this->customlib->getHospitalTimeFormat()); ?></span></td>
									</tr>
								<?php } ?> -->
								<tr>
									<!-- <th><?php echo $this->lang->line('message'); ?></th>
									<td colspan="4"><?php echo $result['message'] ?></td> -->
								</tr>
							</table>
						</div>
					</div>
					<?php //if($result['appointment_status'] == 'approved'){ 
					?>
					<hr style="height: 1px; clear: both;margin-bottom: 10px; margin-top: 10px" />
					<h4 class="font-bold">&nbsp;<?php echo $this->lang->line("payment_details"); ?></h4>
					<div class="row">
						<div class="col-md-12">
							<table class="print-table">
								<thead>
									<tr>
										<td><strong>Amount (Rs)</strong></td>
										<td></td>
										<!-- <td><strong><?php echo  $result['source']; ?></strong></td> -->
										<td class="text-right" id="doctor_fees"><?php if ($result['amount'] != "") {
																															echo  $currency_symbol . '.' . $result['amount'];
																														} else {
																															echo $currency_symbol . '.'  . '0.00';
																														} ?> </td>
									</tr>

								</thead>
								<tbody>
									<tr class="line">
										<td class=""><strong>Service Charges</strong></td>
										<td></td>
										<!-- <td class=""><strong><?php echo $this->lang->line('source'); ?></strong></td> -->
										<td class="text-right">Rs.50</td>
									</tr>

								</tbody>

							</table>
							<table class="noborder_table">
								<tr>
									<td colspan="2" class="text-right thick-line"><strong>Net Amount</strong></td>
									<td class="text-right thick-line"></td>
								</tr>
								<tr>
									<td colspan="2" class="text-right"><strong>Service Charges</strong></td>
									<td class="text-right">Rs.50</td>
								</tr>
								<tr>
									<td colspan="2" class="text-right"><strong>Total</strong></td>
									<td class="text-right" id="doctor_fees"><?php if ($result['amount'] != "") {
																														echo  $currency_symbol . '.' . $result['amount'] + 50;
																													} else {
																														echo $currency_symbol . '.' . '0.00';
																													} ?> </td>
								</tr>
							</table>
						</div>
					</div>
					<?php //} 
					?>
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