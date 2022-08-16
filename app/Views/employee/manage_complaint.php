<!DOCTYPE html>
<html lang="en">

<head>
  <title>I-Van</title>
  <?php require_once(APPPATH . 'Views/components_emp/header.php'); ?>
</head>

<body>
  <div class="wrapper">
    <?php require_once(APPPATH . 'Views/components_emp/wrapper.php'); ?>
    <div id="content">
      <?php require_once(APPPATH . 'Views/components_emp/navbar.php'); ?>
      <div class="row mx-0 px-0">
        <div class="col-1 ps-0"></div>
        <div class="col-10">
          <div class="tabcard-showuser">
            <h3 class="ps-3">การรายงานปัญหา</h3>
            <table class="tb-dash-table">
              <thead>
                <th class="tb-dash-th-com" width="8%">ลำดับ</th>
                <th class="tb-dash-th-com border-start txt-left" width="32%">หัวข้อ</th>
                <th class="tb-dash-th-com border-start txt-left" width="60%">รายละเอียด</th>
                </tr>
              </thead>
              <?php foreach ($all_complaint as $value) { ?>
                <tr>
                  <td class="tb-dash-td" width="8%">
                    <label class="form-check-label">
                      <?= $all_complaint_row--; ?>
                    </label>
                  </td>
                  <td class="tb-dash-td border-start text-start" width="32%">
                    <label class="form-check-label">
                      <?= $value['Com_Topic'] ?>
                    </label>
                  </td>
                  <td class="tb-dash-td border-start text-start" width="60%">
                    <label class="form-check-label">
                      <?= $value['Com_Content']; ?>
                      <label>
                  </td>
                </tr>
              <?php } ?>
            </table>
          </div>
        </div>
        <div class="col-1 pe-0"></div>
      </div>
    </div> <!-- END CONTENT -->
  </div> <!-- END Wrapper -->
</body>

</html>
<script>
  $(document).ready(function() {
    <?php if (session()->getFlashdata('swel_title_emp')) { ?>
      swal({
        title: "<?= session()->getFlashdata('swel_title_emp') ?>",
        text: "<?= session()->getFlashdata('swel_text_emp') ?>",
        icon: "<?= session()->getFlashdata('swel_icon_emp') ?>",
        button: "<?= session()->getFlashdata('swel_button_emp') ?>",
      });
    <?php } ?>
  });
</script>