<?php if(isset($fb_login_url)): ?>
<h1><a href="<?= $fb_login_url; ?>">Login With Facebook</a></h1>
<?php else:
  if(isset($userdata)):
    ?>
<img src="<?= $userdata['profile_pic']; ?>" height="100px" width="100px">
<p>Welcome <?= $userdata['user_name']; ?></p>
<p><?= $userdata['email']; ?></p>
<a href="<?= base_url(); ?>/logout">Logout</a>
<?php
endif;
?>
<?php endif; ?>