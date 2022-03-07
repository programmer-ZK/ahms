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
								<tbody>

									<tr>
										<th>Date</th>
										<td><?php echo $this->customlib->YYYYMMDDTodateFormat($result["date"]); ?></td>
									</tr>

									<tr>
										<th>Doctor</th>
										<td class="text-capitalize"><span id='patient_name_view'><?php echo  $result['name'] . " " . $result['surname']  ?></span></td>
									</tr>

									<tr>
										<th>Total Patients</th>
										<td class="text-capitalize"><span id='patient_name_view'><?php echo  $result['NumOfApp']  ?></span></td>
									</tr>

									<tr>
										<th>Total Amount</th>
										<td class="text-capitalize"><span id='patient_name_view'><?php echo  $result['total']  ?></span></td>
									</tr>

									<tr>
										<th>Service Charges</th>
										<td class="text-capitalize"><span id='patient_name_view'><?php echo  $result['NumOfApp'] * 50   ?></span></td>
									</tr>

									<tr>
										<th>Doctor's Amount</th>
										<td class="text-capitalize"><span id='patient_name_view'><?php echo  $result['total'] - $result['NumOfApp'] * 50  ?></span></td>
									</tr>



								</tbody>

							</table>
							<hr style="height: 1px; clear: both;margin-bottom: 10px; margin-top: 10px" />
						
								<h4 class="text-center"><b> Print Time</b></h4>
								<p class="text-center"><span id='patient_name_view'><?php echo date("h:i A d/m/Y") ?></span></p>
							
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