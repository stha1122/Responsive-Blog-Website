<?php
    include 'partials/header.php';

// get back from data if there was an error
$firstname=$_SESSION['add-user-data']['firstname'] ?? null;
$lastname=$_SESSION['add-user-data']['lastname'] ?? null;
$username=$_SESSION['add-user-data']['username'] ?? null;
$email=$_SESSION['add-user-data']['email'] ?? null;
$createpassword=$_SESSION['add-user-data']['createpassword'] ?? null;
$confirmpassword=$_SESSION['add-user-data']['confirmpassword'] ?? null;



//delete session data

unset($_SESSION['add-user-data']);

?>

<section class="form_section">
    <div class="container form_section-container">
        <h2>Add User</h2>
        <?php if(isset($_SESSION['add-user'])) :?>
            <div class="alert_message error">
                <p>
                    <?= $_SESSION['add-user'];
                    unset($_SESSION['add-user']);
                    ?>
                </p>
            </div>
        <?php endif ?>
        <form action="<?= ROOT_URL ?>admin/add-user-logic.php" enctype="multipart/form-data" method="POST">
            <input type="text" placeholder="First Name"  value="<?= $firstname ?>" name="firstname">
            <input type="text" placeholder="Last Name" value="<?= $lastname ?>" name="lastname">
            <input type="text" placeholder="Username" value="<?= $username ?>" name="username">
            <input type="email" placeholder="Email" value="<?= $email ?>" name="email">
            <input type="password" name="createpassword"  value="<?=$createpassword?>" placeholder="Create password">
            <input type="password"name="confirmpassword"value="<?=$confirmpassword?>" placeholder="Confirm password">
           <select name="userrole">
                <option value="0">Author</option>
                <option value="1">Admin</option>
            </select>
            <div class="form_control">
                <label for="avatar">User Avatar</label>
                <input type="file"  name="avatar" value="<?=$avatar?>" id="avatar">
            </div>
            <button type="submit" class="btn" name="submit">Add User</button>
         </form>
    </div>
</section>


<?php
    include '../partials/footer.php';

?>