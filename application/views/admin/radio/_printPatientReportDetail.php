<link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/sh-print.css">
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
            <div class="col-md-6">

              <p><span class="font-bold"><?php echo $this->lang->line('bill_no'); ?>: </span> <?php echo $bill_prefix . $result->radiology_bill_id; ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line('patient'); ?>:</span> <?php echo composePatientName($result->patient_name, $result->patient_id); ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line('case_id'); ?> :</span> <?php echo $result->case_reference_id; ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line('age'); ?> :</span> <?php echo $this->customlib->getPatientAge($result->age, $result->month, $result->day); ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line('gender'); ?> :</span> <?php echo $result->gender; ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line('doctor_name'); ?> :</span> <?php echo $result->doctor_name; ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line('collection_by'); ?> :</span> <?php echo composeStaffNameByString($result->collection_specialist_staff_name, $result->collection_specialist_staff_surname, $result->collection_specialist_staff_employee_id); ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line('radiology_center'); ?> :</span> <?php echo $result->radiology_center ?></p>
            </div>
            <div class="col-md-6 text-right">
              <p><span class="text-muted font-bold"><?php echo $this->lang->line('approve_date'); ?>: </span> <?php echo $this->customlib->YYYYMMDDTodateFormat($result->parameter_update); ?></p>
              <p><span class="text-muted font-bold"><?php echo $this->lang->line('report_collection_date'); ?>: </span> <?php echo $this->customlib->YYYYMMDDTodateFormat($result->collection_date); ?></p>
              <p><span class="text-muted font-bold"><?php echo $this->lang->line('expected_date'); ?>: </span> <?php echo $this->customlib->YYYYMMDDTodateFormat($result->reporting_date); ?></p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <h4 class="text-center">
                <strong><?php echo $result->test_name; ?></strong>
              </h4>
           
            </div>
          </div>
          <?php if ($result->radiology_result != "") { ?>
            <div class="row">
              <div class="col-md-12">
                <p><span class="font-bold"><?php echo $this->lang->line('result'); ?>: </span> <?php echo nl2br($result->radiology_result); ?></p>

              </div>
            </div>
          <?php } ?>
        </div>
      </div>
      <div class="clear">
        <p>
          <?php
          if (!empty($print_details[0]['print_footer'])) {
            echo $print_details[0]['print_footer'];
          }
          ?>
        </p>
      </div>
    </div>
  </div>
</div>