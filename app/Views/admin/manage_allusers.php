<!DOCTYPE html>
<html lang="en">

<head>
  <title>I-Van</title>
  <?php require_once(APPPATH . 'Views/components_emp/header.php'); ?>
  <style>
    div div nav ul li a {
      border: 2px solid #FFC758;
      border-radius: 10px;
      padding: 0px 20px 0px 20px;
      margin-right: 3px;
      color: black;
      text-decoration: none;
    }

    div div nav ul li a:hover {
      background-color: wheat;
      border: 2px solid #FFC758;
      border-radius: 10px;
      padding: 0px 20px 0px 20px;
      margin-right: 3px;
      color: black;
      text-decoration: none;
    }

    .active a {
      background-color: #FFC758;
    }
  </style>
</head>

<body>
  <div class="wrapper">
    <?php require_once(APPPATH . 'Views/components_emp/wrapper.php'); ?>
    <div id="content">
      <?php require_once(APPPATH . 'Views/components_emp/navbar.php'); ?>
      <div class="container">
        <div class="head-em">
          <h4 class="text-center my-5">จัดการผู้ใช้</h4>
        </div>
        <div class="tabcard_em px-4">
          <?= $pager->links(); ?>
          <center>
            <table class="mange-table table tb-dash-table table-borderless table-hover">
              <thead>
                <tr>
                  <th class="mange-th"></th>
                  <th class="mange-th">ID</th>
                  <th class="mange-th">ชื่อ - นามสกุล</th>
                  <th class="mange-th">Email</th>
                  <th class="mange-th">เบอร์โทรศัพท์</th>
                  <th class="mange-th">
                    <div class="dropdown">
                      <button class="dropdown-toggle dropdown-type-position-emp" type="button" id="dropdown_type_position" data-bs-toggle="dropdown" aria-expanded="false">
                        <strong>ตำแหน่ง</strong>
                      </button>
                      <ul class="dropdown-menu" aria-labelledby="dropdown_type_position">
                        <li><a class="dropdown-item" href="<?php echo base_url('/manage-allUsers'); ?>">ทั้งหมด</a></li>
                        <?php foreach($all_position as $value) { ?>
                        <li><a class="dropdown-item" href="<?php echo base_url('/manage-allUsers?p=').$value['Pos_ID']; ?>"><?= $value['Pos_Name_TH']; ?></a></li>
                        <?php } ?>
                      </ul>
                    </div>
                  </th>
                  <th class="mange-th">แก้ไข</th>
                </tr>
              </thead>
              <?php foreach ($list_users as $value) { ?>
                <tr>
                  <td class="mange-td">
                    <div class="form-check">
                      <form action="<?php echo base_url('/EmployeeController/user_del_userId_byCB'); ?>" method="POST">
                        <input class="form-check-input" type="checkbox" id="del_m_user_<?= $value['User_ID']; ?>" name="m_alluser_del_cb[]" value="<?= $value['User_ID']; ?>">
                    </div>
                  </td>
                  <td class="mange-td">
                    <label class="form-check-label" for="del_m_user_<?= $value['User_ID']; ?>"><?= $value['User_ID']; ?><label>
                  </td>
                  <td class="mange-td">
                    <label class="form-check-label" for="del_m_user_<?= $value['User_ID']; ?>"><?= $value['F_Name'] . " " . $value['L_Name']; ?><label>
                  </td>
                  <td class="mange-td">
                    <label class="form-check-label" for="del_m_user_<?= $value['User_ID']; ?>"><?= $value['Email']; ?><label>
                  <td class="mange-td">
                    <label class="form-check-label" id="m_user_phone_<?= $value['User_ID']; ?>">
                      <?php
                      if ($value['Facebook'] == 'true') {
                        $fb_txt = "<font color=\"#0d6efd\">(<i class=\"fab fa-facebook-f\"></i>)</font>";
                      } else {
                        $fb_txt = "";
                      }
                      if (isset($value['Phone'])) {
                        echo $value['Phone'] . " " . $fb_txt;
                      } else {
                        echo "N/A " . $fb_txt;
                      }
                      ?>
                      <label>
                        <script>
                          $(document).ready(function() {
                            var phoneNo = document.getElementById('m_user_phone_<?= $value['User_ID']; ?>').innerHTML;
                            document.getElementById('m_user_phone_<?= $value['User_ID']; ?>').innerHTML = phoneNo.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
                          });
                        </script>
                  </td>
                  <td class="mange-td">
                    <span class="<?php if ($value['Pos_ID'] == 2) {
                                    echo "text-primary";
                                  } else if ($value['Pos_ID'] == 3) {
                                    echo "text-orange";
                                  } else if ($value['Pos_ID'] == 4) {
                                    echo "text-danger";
                                  } ?>"><?= $value['Pos_Name']; ?></span>
                  </td>
                  <td class="mange-td">
                    <a class="btn btn-warning" href="<?php echo base_url('edit-officer') . '/' . $value['User_ID']; ?>">แก้ไข</a>
                  </td>
                </tr>
              <?php } ?>
            </table>
            <a href="<?php echo base_url('/add-officer'); ?>" class="button-add me-3">เพิ่มข้อมูล</a>
            <input type="submit" class="button-delete ms-0" value="ลบข้อมูล" />
            </form>
          </center>
        </div>
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