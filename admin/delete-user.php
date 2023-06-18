<?php
require 'config/database.php';
 if(isset($_GET['id'])){
    //fetch user from database
    $id = filter_var($_GET['id'],FILTER_SANITIZE_NUMBER_INT);
    //fetch user from database
    $query ="SELECT * FROM users WHERE id=$id";
    $result=mysqli_query($connection ,$query);
    $users = mysqli_fetch_assoc($result);
    //make sure we got only one user from
    if(mysqli_num_rows($result)==1){
        $avatar_name=$users['avatar'];
        $avatar_path='../images/'.$avatar_name;
        //delete image if available
        if($avatar_path){
            unlink($avatar_path);
        }
    }
    //fetch all thumbnails of user's posts and delete them
    $thumbnails_query="SELECT thumbnail FROM posts WHERE author_id=$id";
    $thumbnails_result = mysqli_query($connection,$thumbnails_query);
    if(mysqli_num_rows($thumbnails_result)>0){
        while($thumbnail= mysqli_fetch_assoc($thumbnails_result)){
            $thumbnail_path='../images/'.$thumbnail['thumbnail'];
            //delete thumbnail from images folder
            if($thumbnail_path){
                unlink($thumbnail_path);
            }
        }
    }



    //delelte user from database
    $delete_user_query="DELETE FROM users WHERE id=$id";
    $delete_user_result=mysqli_query($connection,$delete_user_query);
    if(mysqli_errno($connection)){
        $_SESSION['delete-user']=" delete {$users['firstname']} {$users['lastname']}  ";
    }
    else{
        $_SESSION['delete-user-success']=" {$users['firstname']} {$users['lastname']} deleted successfully";
    }
 }
 header('location:'.ROOT_URL.'admin/manage-users.php');
 die();
