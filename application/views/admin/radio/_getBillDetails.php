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
          <div class="row">
            <div class="col-md-6">
              <p><span class="font-bold"><?php echo $this->lang->line("bill_no"); ?> :</span> <?php echo $bill_prefix . $result->id; ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line('patient'); ?>:</span> <?php echo composePatientName($result->patient_name, $result->patient_id); ?></p>
              
              <p><span class="font-bold"><?php echo $this->lang->line("age"); ?> :</span> <?php echo $this->customlib->getPatientAge($result->age, $result->month, $result->day); ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line("gender"); ?> :</span> <?php echo $result->gender; ?></p>
              <p><span class="font-bold"><?php echo $this->lang->line("doctor"); ?> :</span> <?php echo $result->doctor_name; ?></p>

            </div>
            <div class="col-md-6 text-right">
              <p><span class="font-bold"><?php echo $this->lang->line('date'); ?>: </span> <?php echo $this->customlib->YYYYMMDDHisTodateFormat($result->date, $this->customlib->getHospitalTimeFormat()); ?></p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <table class="print-table">
                <thead>
                  <tr class="line">
                    <td><strong>#</strong></td>
                    <td colspan="2" class="text-left"><strong><?php echo $this->lang->line('test_name'); ?></strong></td>
                    <td colspan="2" class="text-right"><strong><?php echo $this->lang->line('amount') . ' (' . $currency_symbol . ')'; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $row_counter = 1;
                  $tax_amt = 0;

                  foreach ($result->radiology_report as $report_key => $report_value) {
                    $amount += $report_value->apply_charge;
                    if ($report_value->tax_percentage > 0) {
                      $tax_amt += ($report_value->tax_percentage);
                    } else {
                      $tax_amt += 0;
                    }
                  ?>
                    <tr>
                      <td><?php echo $row_counter; ?></td>
                      <td colspan="2"><strong><?php echo $report_value->test_name; ?></strong></td>
                     
                      <td colspan="2" class="text-right">
                        <?php echo $report_value->apply_charge; ?>
                      </td>
                    </tr>
                  <?php
                    $row_counter++;
                  }
                  ?>

                  <tr>
                    <td colspan="3" class="thick-line"></td>
                    <td class="text-right thick-line"><strong><?php echo $this->lang->line('total'); ?></strong></td>
                    <td class="text-right thick-line"><strong><?php echo $currency_symbol . "" . amountFormat($amount); ?></strong></td>
                  </tr>
                  <tr style="display: none;">
                    <td colspan="3" class="no-line"></td>
                    <td class="text-right no-line"><strong><?php echo $this->lang->line('discount'); ?></strong></td>
                    <td class="text-right no-line"><strong><?php echo "(" . $result->discount_percentage . "%) " . $currency_symbol . amountFormat($result->discount); ?></strong></td>
                  </tr>
                  <tr  style="display: none;">
                    <td colspan="3" class="no-line"></td>
                    <td class="text-right no-line"><strong><?php echo $this->lang->line('tax'); ?></strong></td>
                    <td class="text-right no-line"><strong><?php echo $currency_symbol . "" . amountFormat($tax_amt); ?></strong></td>
                  </tr>
                  <tr  style="display: none;">
                    <td colspan="3" class="no-line"></td>
                    <td class="text-right no-line"><strong><?php echo $this->lang->line('net_amount'); ?></strong></td>
                    <td class="text-right no-line"><strong><?php echo $currency_symbol . "" . amountFormat($result->net_amount); ?></strong></td>
                  </tr>
                  <tr style="display: none;">
                    <td colspan="3" class="no-line"></td>
                    <td class="text-right no-line"><strong><?php echo $this->lang->line('paid'); ?></strong></td>
                    <td class="text-right no-line"><strong><?php echo $currency_symbol . "" . amountFormat($result->total_deposit); ?></strong></td>
                  </tr>
                  <tr style="display: none;">
                    <td colspan="3" class="no-line"></td>
                    <td class="text-right no-line"><strong><?php echo $this->lang->line('total_due'); ?></strong></td>
                    <td class="text-right no-line"><strong><?php echo $currency_symbol . "" . amountFormat($result->net_amount - $result->total_deposit); ?></strong></td>
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