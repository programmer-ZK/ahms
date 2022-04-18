<link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/sh-print.css">
<?php
if ($charge->opd_id != "" && $charge->opd_id != 0) {
  $patient_name = $charge->opd_patient_name;
  $patient_id = $charge->opd_patient_id;
  $case_reference_id = $charge->opd_case_reference_id;
} else {
  $patient_name = $charge->ipd_patient_name;
  $patient_id = $charge->ipd_patient_id;
  $case_reference_id = $charge->ipd_case_reference_id;
}
$currency_symbol = $this->customlib->getHospitalCurrencyFormat();
?>

<div class="print-area">
  <div class="row">
    <div class="col-md-12">
      <!-- <?php if (!empty($print_details[0]['print_header'])) { ?>
        <div class="pprinta4">
          <img src="<?php
                    if (!empty($print_details[0]['print_header'])) {
                      echo base_url() . $print_details[0]['print_header'] . img_time();
                    }
                    ?>" class="img-responsive" style="height:100px; width: 100%;">
        </div>
      <?php } ?> -->
      <img src="/ahms/uploads/printing/4.png" class="img-responsive" style="height:100px; width: 100%;">
      <div class="" style="width: 100%; height: 40px;"></div>
      <div class="card">
        <div class="card-body">
          <div class="ro">
            <table>
              <tr>
                <div class="text-center mt-5" style="font-size: 34px;">
                  <p><?php echo composePatientName($patient_name, $patient_id) ?></p>
                </div>
              </tr>
              <tr>
                <th>Doctor</th>
                <td class="text-capitalize"><span id='patient_name_view'><?php echo  $result['name'] . " " . $result['surname']  ?></span></td>

              </tr>
              <tr>
                <th><?php echo $this->lang->line("case_id"); ?></th>
                <td> <?php echo $case_reference_id; ?> </td>
              </tr>

              <tr>
                <th>Date</th>
                <td><?php echo $this->customlib->YYYYMMDDHisTodateFormat($result["date"]); ?></td>
                <th> </th>
                <td> </td>
              </tr>
            </table>
          </div>

          <div class="row">
            <div class="col-md-12">
              <table class="print-table">
                <thead>
                  <tr class="line">
                    <td><strong>#</strong></td>
                    <td colspan="">
                      <strong><?php echo $this->lang->line('description'); ?></strong>
                    </td>
                    <td colspan="">
                      <strong>Day(s)</strong>
                    </td>

                    <td class="text-right">
                      <strong><?php echo $this->lang->line('amount') . ' (' . $currency_symbol . ')'; ?></strong>
                    </td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td colspan="">
                      <strong><?php echo $charge->charge_name ?></strong><br>
                      <?php echo $charge->note; ?>
                    </td>
                    <td class="text-right"><?php echo $charge->qty; ?></td>
                    <td class="text-right"><?php echo $charge->amount; ?></td>
                  </tr>
                  <tr>

                    <td colspan="3" class="text-right thick-line"><strong><?php echo $this->lang->line('total'); ?></strong></td>
                    <td class="text-right thick-line"><strong><?php echo $currency_symbol . $charge->apply_charge; ?></strong></td>
                  </tr>
                  <tr>
                    <th colspan="2">Printed By:</th>
                    <td colspan=""></td>
                    <td colspan="3" class="text-capitalize text-right">
                      <?php echo $this->customlib->getAdminSessionUserName(); ?>
                    </td>
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