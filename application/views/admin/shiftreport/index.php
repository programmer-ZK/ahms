<?php
$currency_symbol = $this->customlib->getHospitalCurrencyFormat();
$genderList      = $this->customlib->getGender_Patient();
?>
<style>
	.bootstrap-datetimepicker-widget {
		overflow: visible !important
	}
</style>
<div class="content-wrapper">
	<!-- Main content -->
	<section class="content">
	
	<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title titlefix">Shift Report</h3>
						<div class="box-tools pull-right">
							<?php if ($this->rbac->hasPrivilege('appointment', 'can_add')) { ?>
								<a data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-sm addappointment"> <i class="fa fa-plus"></i> <?php echo $this->lang->line('add_appointment'); ?></a>
							<?php } ?>
							<a href="<?php echo base_url("admin/onlineappointment/patientschedule"); ?>" class="btn btn-primary btn-sm"><i class="fa fa-reorder"></i> <?php echo $this->lang->line('doctor_wise'); ?></a>
							<a href="<?php echo base_url("admin/onlineappointment/patientqueue"); ?>" class="btn btn-primary btn-sm"><i class="fa fa-reorder"></i> <?php echo $this->lang->line('queue'); ?></a>
						</div>
					</div><!-- /.box-header -->
					<div class="box-body">
						<div class="download_label"><?php echo $this->lang->line('appointed_patient_list'); ?></div>
						<div class="">
							<table class="table table-striped table-bordered table-hover ajaxlist" data-export-title="<?php echo $this->lang->line('appointment_details'); ?>">
								<thead>
									<tr>
										<th><?php echo $this->lang->line('patient_name'); ?></th>
										<th><?php echo $this->lang->line('appointment_no'); ?></th>
										<th><?php echo $this->lang->line('appointment_date'); ?></th>
										<th width="10%"><?php echo $this->lang->line('phone'); ?></th>
										<th><?php echo $this->lang->line('gender'); ?></th>
										<th><?php echo $this->lang->line('doctor'); ?></th>
										<th><?php echo $this->lang->line('source'); ?></th>
										<th><?php echo $this->lang->line('priority'); ?></th>
										<?php if ($this->module_lib->hasActive('live_consultation')) { ?>
											<th><?php echo $this->lang->line('live_consultant'); ?></th>

										<?php } ?>
										<?php
										if (!empty($fields)) {
											foreach ($fields as $fields_key => $fields_value) {
										?>
												<th><?php echo $fields_value->name; ?></th>
										<?php
											}
										}
										?>
										<th><?php echo $this->lang->line('fees'); ?></th>
										<th width="150" class="text-right"><?php echo $this->lang->line('status'); ?></th>
									</tr>
								</thead>
								<tbody>


								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<!-- Add Appointment Modal -->
<div class="modal fade" id="myModal" aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content modal-media-content">
			<div class="modal-header modal-media-header">
				<button type="button" class="close pt4" data-dismiss="modal">&times;</button>
				<div class="row">
					<div class="col-sm-8 col-xs-8">
						<div class="row">
							<div class="col-lg-10 col-md-10 col-sm-5 col-xs-9">
								<div class="p-2 select2-full-width">
									<select class="form-control patient_list_ajax" form="formadd" id="addpatient_id" name='patient_id'>
									</select>
								</div>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-3 col-xs-1">
								<div class="p-2">
									<?php if ($this->rbac->hasPrivilege('patient', 'can_add')) { ?>
										<a data-toggle="modal" id="add" onclick="holdModal('myModalpa')" class="modalbtnpatient"><i class="fa fa-plus"></i> <span><?php echo $this->lang->line('new_patient'); ?></span></a>
									<?php } ?>
								</div>
							</div>
						</div>
					</div>
					<!--./col-sm-8-->
				</div><!-- ./row -->
			</div>
			<form id="formadd" accept-charset="utf-8" method="post">
				<div class="">
					<div class="modal-body pb0">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="row">
									<div class="col-sm-3">
										<div class="form-group">
											<label for="exampleInputFile"><?php echo $this->lang->line('doctor'); ?></label>
											<small class="req"> *</small>
											<div>
												<select class="form-control select2 doctor_select2" name="doctorid" onchange="getDoctorShift(this);getDoctorFees(this)" <?php if ((isset($disable_option)) && ($disable_option == true)) {
																																																																									echo 'disabled';
																																																																								} ?> name='doctor' id="doctorid" style="width:100%">
													<option value="<?php echo set_value('doctor'); ?>"><?php echo $this->lang->line('select') ?></option>
													<?php foreach ($doctors as $dkey => $dvalue) {
													?>
														<option value="<?php echo $dvalue["id"]; ?>" <?php if ($doctor_select == $dvalue['id']) {
																																						echo 'selected';
																																					} ?>>
															<?php echo $dvalue["name"] . " " . $dvalue["surname"] . " (" . $dvalue["employee_id"] . ")" ?></option>
													<?php } ?>
												</select>
												<input type="hidden" name="charge_id" value="" id="charge_id" />
											</div>
											<span class="text-danger"><?php echo form_error('doctor'); ?></span>
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group">
											<label for="doctor_fees"><?php echo $this->lang->line("doctor_fees"); ?></label>
											<small class="req"> *</small>
											<div>
												<input type="text" name="amount" id="doctor_fees" class="form-control" readonly="readonly">
											</div>
											<span class="text-danger"><?php echo form_error('doctor_fees'); ?></span>
										</div>
									</div>
									<div class="col-sm-3" style="display: none;">
										<div class="form-group">
											<label for="pwd"><?php echo $this->lang->line('shift'); ?></label><span class="req"> *</span>
											<select name="global_shift" id="global_shift" class="select2" style="width:100%">
												<option value=""><?php echo $this->lang->line('select'); ?></option>
											</select>
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group" style="position: relative; overflow:visible !important">
											<label><?php echo $this->lang->line('appointment_date'); ?></label>
											<small class="req"> *</small>
											<input type="text" id="datetimepicker" name="date" class="form-control datetime">
											<span class="text-danger"><?php echo form_error('date'); ?></span>
										</div>
									</div>
									<div class="col-md-3" style="display: none;">
										<div class="form-group">
											<label for="slot"><?php echo $this->lang->line('slot'); ?></label>
											<span class="req"> *</span>
											<select name="slot" id="slot" onchange="validateTime(this)" class="form-control">
												<option value=""><?php echo $this->lang->line('select'); ?></option>
											</select>
											<span class="text-danger"><?php echo form_error('slot'); ?></span>
										</div>
									</div>
									<div class="col-sm-3" style="display: none;">
										<div class="form-group">
											<label for="exampleInputFile"><?php echo $this->lang->line('appointment_priority'); ?></label>
											<div>
												<select class="form-control select2 appointment_priority_select2" name='priority' style="width:100%">
													<?php foreach ($appoint_priority_list as $dkey => $dvalue) { ?>
														<option value="<?php echo $dvalue["id"]; ?>"> <?php echo $dvalue["appoint_priority"]; ?></option>
													<?php } ?>
												</select>
											</div>
											<span class="text-danger"><?php echo form_error('doctor'); ?></span>
										</div>
									</div>
									<div class="col-sm-3" style="display: none;">
										<div class="form-group">
											<label><?php echo $this->lang->line('payment_mode'); ?></label>
											<select class="form-control payment_mode" name="payment_mode">
												<?php foreach ($payment_mode as $key => $value) { ?>
													<option value="<?php echo $key ?>"><?php echo $value ?></option>
												<?php } ?>
											</select>
											<span class="text-danger"><?php echo form_error('apply_charge'); ?></span>
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group">
											<label for="appointment_status"><?php echo $this->lang->line('status'); ?><small class="req"> *</small></label>
											<select name="appointment_status" onchange="appointmentstatus()" class="form-control" id="appointment_status">
												<option value=""><?php echo $this->lang->line('select'); ?></option>
												<?php foreach ($appointment_status as $appointment_status_key => $appointment_status_value) {  ?>
													<option value="<?php echo $appointment_status_key ?>"><?php echo $appointment_status_value ?></option>
												<?php } ?>
											</select>
										</div>
									</div>
									<div class="cheque_div" style="display: none;">
										<div class="col-sm-3">
											<div class="form-group">
												<label><?php echo $this->lang->line('cheque_no'); ?></label><small class="req"> *</small>
												<input type="text" name="cheque_no" id="cheque_no" class="form-control">
												<span class="text-danger"></span>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="form-group">
												<label><?php echo $this->lang->line('cheque_date'); ?></label><small class="req"> *</small>
												<input type="text" name="cheque_date" id="cheque_date" class="form-control date">
												<span class="text-danger"></span>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="form-group">
												<label><?php echo $this->lang->line('attach_document'); ?></label>
												<input type="file" class="filestyle form-control" name="document">
												<span class="text-danger"><?php echo form_error('document'); ?></span>
											</div>
										</div>
									</div>
									<div class="col-sm-8" style="display: none;">
										<div class="form-group">
											<label for="message"><?php echo $this->lang->line('message'); ?> </label>
											<textarea name="message" id="note" class="form-control"></textarea>
											<span class="text-danger"><?php echo form_error('message'); ?></span>
										</div>
									</div>
									<?php if ($this->module_lib->hasActive('live_consultation')) { ?>
										<div class="col-sm-4" style="display: none;">
											<div class="form-group">
												<label for="exampleInputFile"><?php echo $this->lang->line('live_consultant_on_video_conference'); ?></label>
												<small class="req">*</small>
												<div>
													<select name="live_consult" id="live_consult" class="form-control">
														<?php foreach ($yesno_condition as $yesno_key => $yesno_value) {
														?>
															<option value="<?php echo $yesno_key ?>" <?php
																																				if ($yesno_key == 'no') {
																																					echo "selected";
																																				}
																																				?>><?php echo $yesno_value ?>
															</option>
														<?php } ?>
													</select>
												</div>
												<span class="text-danger"><?php echo form_error('live_consult'); ?></span>
											</div>
										</div>
									<?php } ?>
									<div class="">
										<?php echo display_custom_fields('appointment'); ?>
									</div>
								</div>
								<!--./row-->
							</div>
							<!--./col-md-12-->
						</div>
						<!--./row-->
					</div>
					<!--./modal-body-->
				</div>
				<div class="modal-footer">
					<div class="pull-right">
						<button type="submit" id="formaddbtn" name="save" data-loading-text="<?php echo $this->lang->line('processing') ?>" class="btn btn-info"><i class="fa fa-check-circle"></i> <?php echo $this->lang->line('save'); ?></button>
					</div>
					<div class="pull-right" style="margin-right: 10px; ">
						<button type="submit" data-loading-text="<?php echo $this->lang->line('processing') ?>" name="save_print" class="btn btn-info pull-right printsavebtn"><i class="fa fa-print"></i> <?php echo $this->lang->line('save_print'); ?></button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- dd -->

<div class="modal fade" id="rescheduleModal" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content modal-media-content">
			<div class="modal-header modal-media-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $this->lang->line('reschedule'); ?></h4>
			</div>
			<form id="rescheduleform" accept-charset="utf-8" method="post">
				<div class="">
					<div class="modal-body pb0">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="row">
									<input type="hidden" name="appointment_id" id="appointment_id">
									<div class="col-sm-3">
										<div class="form-group">
											<label for="exampleInputFile">
												<?php echo $this->lang->line('doctor'); ?></label>
											<small class="req"> *</small>
											<div>
												<select class="form-control" onchange="getDoctorShift(this);getDoctorFeesEdit(this)" style="width:100%" id="rdoctor" disabled>
													<option value="<?php echo set_value('doctor'); ?>"><?php echo $this->lang->line('select') ?></option>
													<?php foreach ($doctors as $dkey => $dvalue) {
													?>
														<option value="<?php echo $dvalue["id"]; ?>"><?php echo $dvalue["name"] . " " . $dvalue["surname"] . " (" . $dvalue["employee_id"] . ")" ?></option>
													<?php } ?>
												</select>
												<span class="text-danger"><?php echo form_error('rdoctor'); ?></span>
											</div>
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group">
											<label for="doctor_fees"><?php echo $this->lang->line("doctor_fees"); ?></label>
											<small class="req"> *</small>
											<div>
												<input type="text" name="doctor_fees" id="rdoctor_fees_edit" class="form-control" readonly="readonly">
											</div>
											<span class="text-danger"><?php echo form_error('doctor_fees'); ?></span>
										</div>
									</div>
									<div class="col-sm-3" style="display: none;">
										<div class="form-group">
											<label for="pwd"><?php echo $this->lang->line('shift'); ?></label><span class="req"> *</span>
											<select name="rglobal_shift" id="rglobal_shift_edit" onchange="getreschsduleShift()" class="select2" style="width:100%">
												<option value=""><?php echo $this->lang->line('select'); ?></option>
											</select>
											<span class="text-danger"><?php echo form_error('rglobal_shift'); ?></span>
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group">
											<label><?php echo $this->lang->line('appointment_date') ?></label>
											<small class="req"> *</small>
											<input type="text" id="rdates" name="appointment_date" class="form-control datetime" value="<?php echo set_value('dates'); ?>">
											<span class="text-danger"><?php echo form_error('appointment_date'); ?></span>
										</div>
									</div>
									<div class="col-md-3" style="display: none;">
										<div class="form-group">
											<label for="slot"><?php echo $this->lang->line('slot'); ?></label>
											<span class="req"> *</span>
											<select name="rslot" id="rslot_edit" class="form-control">
												<option value=""><?php echo $this->lang->line('select'); ?></option>
											</select>
											<input type="hidden" id="rslot_edit_field" />
											<span class="text-danger"><?php echo form_error('rslot'); ?></span>
										</div>
									</div>
									<div class="col-sm-3" style="display: none;">
										<div class="form-group">
											<label for="exampleInputFile">
												<?php echo $this->lang->line('appointment_priority'); ?></label>
											<div>
												<select class="form-control select2" name='priority' style="width:100%" id="edit_appoint_priority">
													<?php foreach ($appoint_priority_list as $dkey => $dvalue) {
													?>
														<option value="<?php echo $dvalue["id"]; ?>"><?php echo $dvalue["appoint_priority"]; ?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group">
											<label for="appointment_status"><?php echo $this->lang->line('status'); ?><small class="req"> *</small></label>
											<select name="edit_appointment_status" onchange="editappointmentstatus()" class="form-control" id="edit_appointment_status">
												<option value=""><?php echo $this->lang->line('select'); ?></option>
												<?php foreach ($appointment_status as $appointment_status_key => $appointment_status_value) {  ?>
													<option value="<?php echo $appointment_status_key ?>"><?php echo $appointment_status_value ?></option>
												<?php } ?>
											</select>
										</div>
									</div>

									<div class="col-sm-8" style="display: none;">
										<div class="form-group">
											<label for="message"><?php echo $this->lang->line('message'); ?></label>
											<textarea name="message" id="message" class="form-control"><?php echo set_value('message'); ?></textarea>
											<span class="text-danger"><?php echo form_error('message'); ?></span>
										</div>
									</div>
									<?php if ($this->module_lib->hasActive('live_consultation')) { ?>
										<div class="col-sm-4" style="display: none;">
											<div class="form-group">
												<label><?php echo $this->lang->line('live_consultant_on_video_conference'); ?></label> <small class="req">*</small>
												<select name="live_consult" id="edit_liveconsult" class="form-control">
													<?php foreach ($yesno_condition as $yesno_key => $yesno_value) {
													?>
														<option value="<?php echo $yesno_key ?>" <?php
																																			if ($yesno_key == 'no') {
																																				echo "selected";
																																			}
																																			?>><?php echo $yesno_value ?>
														</option>
													<?php } ?>
												</select>
											</div>
										</div>
									<?php } ?>
									<div class="" id="customfield"></div>
									<!-- <div class="" id="customfield" ></div>  -->
								</div>
								<!--./row-->
							</div>
							<!--./col-md-12-->
						</div>
						<!--./row-->
					</div>
					<!--./modal-body-->
				</div>
				<div class="modal-footer">
					<div class="pull-right">
						<button type="submit" id="rescheduleformbtn" data-loading-text="<?php echo $this->lang->line('processing') ?>" class="btn btn-info"><i class="fa fa-check-circle"></i> <?php echo $this->lang->line('save'); ?></button>
					</div>

				</div>
			</form>
		</div>
	</div>
</div>

<div class="modal fade" id="viewModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content modal-media-content">
			<div class="modal-header modal-media-header">
				<button type="button" class="close" data-toggle="tooltip" data-original-title="<?php echo $this->lang->line('close'); ?>" data-dismiss="modal">&times;</button>
				<div class="modalicon">
					<div id="edit_delete">
						<a href="#" data-target="#editModal" data-toggle="tooltip" data-original-title="<?php echo $this->lang->line('edit'); ?>"><i class="fa fa-pencil"></i></a><a href="#" data-toggle="tooltip" onclick="delete_recordById('<?php echo base_url(); ?>admin/appointment/delete/#', '<?php echo $this->lang->line('success_message') ?>')" data-original-title="<?php echo $this->lang->line('delete'); ?>"><i class="fa fa-trash"></i></a>
					</div>
				</div>
				<h4 class="modal-title"><?php echo $this->lang->line('appointment_details'); ?></h4>
			</div>
			<div class="modal-body pt0 pb0">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<form id="view" accept-charset="utf-8" method="get" class="pt5 pb5">
							<div class="table-responsive">
								<table class="table mb0 table-striped table-bordered examples">
									<tr>
										<th width="15%"><?php echo $this->lang->line('patient_name'); ?></th>
										<td width="35%"><span id='patient_names'></span></td>
										<th width="15%"><?php echo $this->lang->line('appointment_no'); ?></th>
										<td width="35%"><span id="appointmentno"></span></td>

									</tr>
									<tr>
										<th width="15%"><?php echo $this->lang->line('age'); ?></th>
										<td width="35%"><span id='patient_age'></span></td>
										<th width="15%"><?php echo 'Appointment S.No.'; ?></th>
										<td width="35%"><span id="appointmentsno"></span></td>

									</tr>
									<tr>
										<th width="15%"><?php echo $this->lang->line('email'); ?></th>
										<td width="35%"><span id='emails'></span></td>
										<th width="15%"><?php echo $this->lang->line('appointment_date'); ?></th>
										<td width="35%"><span id='dating'></span></td>
									</tr>

									<tr>

										<th width="15%"><?php echo $this->lang->line('phone'); ?></th>
										<td width="35%"><span id="phones"></span> </td>
										<th width="15%"><?php echo $this->lang->line('appointment_priority'); ?></th>
										<td width="35%"><span id='appointpriority'></span></td>
									</tr>
									<tr>

										<th width="15%"><?php echo $this->lang->line('gender'); ?></th>
										<td width="35%"><span id="genders"></span>
										<th width="15%"><?php echo $this->lang->line('shift'); ?></th>
										<td width="35%"><span id="global_shift_view"></span></td>
										</td>


									</tr>

									<tr>



									</tr>
									<tr>
										<th width="15%"><?php echo $this->lang->line('doctor'); ?></th>
										<td width="35%"><span id='doctors'></span></td>
										<th width="15%"><?php echo $this->lang->line('slot'); ?></th>
										<td width="35%"><span id='doctor_shift_view' style="text-transform: capitalize;"></span></td>

									</tr>
									<tr>
										<th width="15%"><?php echo $this->lang->line('department'); ?></th>
										<td width="35%"><span id="department_name"></span></td>
										<th width="15%"><?php echo $this->lang->line('amount'); ?></th>
										<td width="35%"><span id='pay_amount'></span></td>

									</tr>

									<?php if ($this->module_lib->hasActive('live_consultation')) { ?>
										<tr>
											<th width="15%"><?php echo $this->lang->line('live_consultation'); ?></th>
											<td width="35%"><span id="liveconsult"></span></td>
											<th width="15%"><?php echo $this->lang->line('status'); ?></th>
											<td width="35%"><span id='status' style="text-transform: capitalize;"></span></td>
										</tr>
									<?php } ?>
									<tr>


									</tr>
									<tr>
										<th width="15%"><?php echo $this->lang->line('payment_note'); ?></th>
										<td width="35%"><span id="payment_note"></span></td>

										<th width="15%"><?php echo $this->lang->line('payment_mode'); ?></th>
										<td width="35%"><span id="payment_mode"></span>
										</td>
									</tr>
									<tr id="payrow" style="display:none">
										<th width="15%"><?php echo $this->lang->line('cheque_no'); ?></th>
										<td width="35%"><span id='spn_chequeno'></span></td>
										<th width="15%"><?php echo $this->lang->line('cheque_date'); ?></th>
										<td width="35%"><span id="spn_chequedate"></span>
										</td>
									</tr>
									<tr id="paydocrow" style="display:none">
										<th width="15%"><?php echo $this->lang->line('document'); ?></th>
										<td width="35%" id='spn_doc'><span></span></td>
									</tr>
									<tr>
										<th>
										<td></td>
										</th>
										<th width="15%"><?php echo $this->lang->line('transaction_id'); ?></th>
										<td width="35%"><span id="trans_id"></span></td>
									</tr>
									<tr>
										<th width="15%"><?php echo $this->lang->line('message'); ?></th>
										<td width="35%"><span id="messages"></span></td>
										<th width="15%"><?php echo $this->lang->line('source'); ?></th>
										<td width="35%"><span id="source"></span></td>
									</tr>

								</table>
								<table class="table mb0 table-striped table-bordered examples" id="field_data">
								</table>
							</div>
						</form>
					</div>
					<!--./col-md-12-->
				</div>
				<!--./row-->
			</div>
		</div>
	</div>
</div>
 
 
<!-- //========datatable end===== -->