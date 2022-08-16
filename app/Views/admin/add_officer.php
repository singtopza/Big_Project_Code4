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
      <div class="container">
        <div class="g-3 align-items-center">
          <div class="tabcard_em px-4">
            <div class="head-em">
              <h4 class="text-center my-5">เพิ่มข้อมูลพนักงาน</h4>
            </div>
            <?php $validation = session()->getFlashdata('validation');
          if(isset($validation)) { ?>
          <div class="alert alert-danger"><?= session()->getFlashdata('validation') ?></div>
          <?php } ?>
            <form action="<?php echo base_url('UserController/addofficer_form'); ?>" method="POST">
            <div class="row">
              <div class="col-1"></div>
              <div class="col-2">
                <label for="inputPassword6" class="col-form-label">ชื่อ</label>
              </div>
              <div class="col-7">
                <div class="input-group">
                  <input class="form-control " type="text" name="frist" required placeholder="ชื่อ">
                </div>
              </div>
              <div class="col-2"></div>
            </div>
            <br>
            <div class="row">
              <div class="col-1"></div>
              <div class="col-2">
                <label for="inputPassword6" class="col-form-label">นามสกุล</label>
              </div>
              <div class="col-7">
                <div class="input-group">
                  <input class="form-control " type="text" name="lastname" required placeholder="นามสกุล">
                </div>
              </div>
              <div class="col-2"></div>
            </div>
            <br>
            <div class="row">
              <div class="col-1"></div>
              <div class="col-2">
                <label for="inputPassword6" class="col-form-label">อีเมล</label>
              </div>
              <div class="col-7">
                <div class="input-group">
                  <input class="form-control " type="text" name="email" placeholder="Email" required>
                </div>
              </div>
              <div class="col-2"></div>
            </div>
            <br>
            <div class="row">
              <div class="col-1"></div>
              <div class="col-2">
                <label for="inputPassword6" class="col-form-label">เบอร์โทรศัพท์</label>
              </div>
              <div class="col-7">
                <div class="input-group">
                  <input class="form-control " type="text" name="tel" onkeydown="javascript: return event.keyCode == 69 ? false : true" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" maxlength="10" required placeholder="เบอร์โทรศัพท์">
                </div>
              </div>
              <div class="col-2"></div>
            </div>
            <br>

            <div class="row">
              <div class="col-1"></div>
              <div class="col-2">
                <label for="inputPassword6" class="col-form-label">ตำแหน่ง</label>
              </div>
              <div class="col-7">
                  <select class="form-select input-field" name="position">
                    <option value="" class="hide-selected">ตำแหน่ง</option>
                    <?php foreach($userposition_list as $value){ ?>
                    <option value="<?= $value['Pos_ID']; ?>"><?= $value['Pos_Name']; ?></option> 
                    <?php } ?>
                  </select>
              </div>
              <div class="col-2"></div>
            </div>
            <div class="row mt-2 mb-4">
              <div class="col-3"></div>
              <div class="col-7">
                <span class="text-danger fs14">* โปรดจำไว้ว่ารหัสผ่านของบัญชี คือหมายเลขโทรศัพท์ที่ลงทะเบียน!</span>
              </div>
              <div class="col-2"></div>
            </div>
            <center>
              <input type="submit" class="button-add" value="ยืนยันข้อมูล">
              <a href="<?php echo base_url('/manage-allUsers'); ?>" class="button-delete">ยกเลิก</a>
            </center>
            </form>
          </div>
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