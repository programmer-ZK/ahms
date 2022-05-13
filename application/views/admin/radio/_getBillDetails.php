<?php
$currency_symbol = $this->customlib->getHospitalCurrencyFormat();
$amount = 0;
?>
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
          <table class="noborder_table">
            <tr>
              <div class="text-center mt-5" style="font-size: 60px; font-weight: bolder;">
                <p><?php echo $result->token_id ?></p>
              </div>
            </tr>
            <tr>
              <br>
            </tr>
            <tr>
              <div class="text-center mt-5" style="font-size: 34px;">
                <p><?php echo composePatientName($result->patient_name, $result->patient_id) ?></p>
              </div>
            </tr>
            <tr>
              <th>Doctor</th>
              <td class="text-capitalize"><span id='patient_name_view'><?php echo  $result->doctor_name;  ?></span></td>
              <th><?php echo $this->lang->line("age"); ?></th>
              <td> <?php echo $this->customlib->getPatientAge($result->age, $result->month, $result->day); ?> </td>
            </tr>
            <tr>
              <br>
            </tr>

            <tr>
              <th><?php echo $this->lang->line('bill_no'); ?></th>
              <td><?php echo $bill_prefix . $result->id ?></td>
              <th>Date</th>
              <td><?php echo $this->customlib->YYYYMMDDHisTodateFormat($result->date, $this->customlib->getHospitalTimeFormat()); ?></td>
            </tr>

            <tr>
            </tr>

            <tr>
              <th></th>
              <td></td>
            </tr>
          </table>

          <div class="row">
            <div class="col-md-12">
              <table class="print-table">
                <thead>
                  <tr class="line">
                    <td><strong>#</strong></td>
                    <td colspan="2" class="text-left"><strong><?php echo $this->lang->line('name'); ?></strong></td>
                    <td colspan="2" class="text-right"><strong><?php echo $this->lang->line('amount') . ' (' . $currency_symbol . ')'; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $row_counter = 1;
                  $test = 0;
                  $tax_amt = 0;
                  $totl_char = 0;

                  foreach ($result->radiology_report as $report_key => $report_value) {
                    $amount += $report_value->apply_charge;

                  ?>
                    <tr>
                      <td><?php echo $row_counter; ?></td>
                      <td colspan="2"><strong><?php echo $report_value->test_name; ?></strong></td>

                      <td colspan="2" class="text-right">
                        <?php
                        if ($report_value->tax_percentage == 0) {
                          $test = $report_value->apply_charge;
                        } else {
                          $test = $report_value->apply_charge - $report_value->tax_percentage;
                          $totl_char += $report_value->tax_percentage;
                        }
                        ?>
                        <?php echo $test; ?>

                      </td>
                    </tr>
                  <?php
                    $row_counter++;
                  }
                  ?>
                  <tr>

                    <?php if ($totl_char > 0) { ?>

                      <td><?= $row_counter++  ?></td>
                      <td colspan="2"><strong>Hospital charges</strong></td>

                      <td colspan="2" class="text-right">
                        <?= $totl_char ?>
                      </td>

                    <?php } ?>

                  </tr>


                  <tr>
                    <td colspan="3" class="thick-line"></td>
                    <td class="text-right thick-line"><strong><?php echo $this->lang->line('total'); ?></strong></td>
                    <td class="text-right thick-line"><strong><?php echo $amount; ?></strong></td>
                  </tr>

                  <br>
                  <br>
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