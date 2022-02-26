<div class="content-wrapper">
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title titlefix"><?php echo $this->lang->line('doctor_wise_appointment'); ?></h3>
          </div>
          <div class="box-body">
            <form action="<?php echo site_url("admin/onlineappointment/patientschedule"); ?>" method="post" accept-charset="utf-8">
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="pwd"><?php echo $this->lang->line('doctor') ?></label>
                    <span class="req"> *</span>
                    <select name="doctor" id="doctor" class="form-control select2">
                      <option value=""><?php echo $this->lang->line('select'); ?></option>
                      <?php foreach ($doctors as $doctor_key => $doctor_value) { ?>
                        <option value="<?php echo $doctor_value['id']; ?>" <?php echo $doctor_value["id"] == set_value("doctor") ? "selected" : ""; ?>><?php echo $doctor_value['name'] . " " . $doctor_value['surname']; ?> (<?php echo $doctor_value["employee_id"]; ?>)</option>
                      <?php } ?>
                    </select>
                    <span class="text-danger"><?php echo form_error('doctor'); ?></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="date"><?php echo $this->lang->line('date') . " " ?></label>
                    <span class="req"> *</span>
                    <div class='input-group'>
                      <input type='text' value="<?php echo set_value('date'); ?>" class="form-control date" name="date" /><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    </div>
                    <span class="text-danger"><?php echo form_error('date'); ?></span>
                  </div>
                </div>
              </div>
              <button type="submit" class="btn btn-primary btn-sm pull-right"><?php echo $this->lang->line('search'); ?></button>
              <?php if (isset($doctor_id)) {
              ?>
                <button type="button" onclick="printShiftReport()" id="report" class="btn btn-primary btn-sm pull-right" style="margin-right: 10px;"><?php echo $this->lang->line('report'); ?></button>
              <?php } ?>
            </form>
          </div>

          <?php if (isset($doctor_id)) {

          ?>
            <div class="box-body">
              <div class="download_label"><?php echo $this->lang->line('doctor_wise_appointment'); ?></div>
              <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped table-bordered dt-list" data-export-title="<?php echo $this->lang->line('doctor_wise_appointment'); ?>">
                  <thead>
                    <tr>
                      <th><?php echo $this->lang->line('patient_name'); ?></th>
                      <th><?php echo $this->lang->line('phone'); ?></th>
                      <th><?php echo $this->lang->line('amount'); ?></th>
                      <th><?php echo $this->lang->line('email'); ?></th>
                      <th class="text-right"><?php echo $this->lang->line('date'); ?></th>
                    </tr>
                  </thead>
                  <tbody>

                  </tbody>
                </table>
              </div>
            </div>
          <?php } ?>
        </div>
      </div>
    </div>
  </section>
</div>

<!-- //========datatable start===== -->
<script type="text/javascript">
  (function($) {
    'use strict';
    $(document).ready(function() {
      $(".select2").select2();
      initDatatable('dt-list', 'admin/onlineappointment/getpatientschedule/?doctor=<?php echo isset($doctor_id) ? $doctor_id : ""; ?>&date=<?php echo isset($date) ? $date : ""; ?>');
    });
  }(jQuery));

  function printShiftReport() {
    $.ajax({
      url: base_url + 'admin/appointment/printShiftReport',
      type: "POST",
      data: {
        'doctor_id': " <?php echo isset($doctor_id) ? $doctor_id : ""; ?>",
        'date': "<?php echo isset($date) ? $date : ""; ?>"
      },
      dataType: 'json',
      beforeSend: function() {},
      success: function(data) {
        popup(data.page);
      },

      error: function(xhr) { // if error occured
        alert("<?php echo $this->lang->line('error_occurred_please_try_again'); ?>");

      },
      complete: function() {}
    });
  }

  // function printShiftReport() {
  //   $.ajax({
  //     url: base_url + 'admin/appointment/printAppointmentBill',
  //     type: "POST",
  //     data: {
  //       'appointment_id': 156
  //     },
  //     dataType: 'json',
  //     beforeSend: function() {},
  //     success: function(data) {
  //       popup(data.page);
  //     },

  //     error: function(xhr) { // if error occured
  //       alert("<?php echo $this->lang->line('error_occurred_please_try_again'); ?>");

  //     },
  //     complete: function() {}
  //   });
  // }

  function popup(data) {
    var base_url = '<?php echo base_url() ?>';
    var frame1 = $('<iframe />');
    frame1[0].name = "frame1";
    frame1.css({
      "position": "absolute",
      "top": "-1000000px"
    });
    $("body").append(frame1);
    var frameDoc = frame1[0].contentWindow ? frame1[0].contentWindow : frame1[0].contentDocument.document ? frame1[0].contentDocument.document : frame1[0].contentDocument;
    frameDoc.document.open();
    //Create a new HTML document.
    frameDoc.document.write('<html>');
    frameDoc.document.write('<head>');
    frameDoc.document.write('<title></title>');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/bootstrap/css/bootstrap.min.css">');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/font-awesome.min.css">');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/ionicons.min.css">');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/AdminLTE.min.css">');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/skins/_all-skins.min.css">');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/iCheck/flat/blue.css">');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/morris/morris.css">');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/jvectormap/jquery-jvectormap-1.2.2.css">');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/datepicker/datepicker3.css">');
    frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/daterangepicker/daterangepicker-bs3.css">');
    frameDoc.document.write('</head>');
    frameDoc.document.write('<body>');
    frameDoc.document.write(data);
    frameDoc.document.write('</body>');
    frameDoc.document.write('</html>');
    frameDoc.document.close();
    setTimeout(function() {
      window.frames["frame1"].focus();
      window.frames["frame1"].print();
      frame1.remove();

    }, 500);

    return true;
  }
</script>
<!-- //========datatable end===== -->