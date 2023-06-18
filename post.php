<?php
    include 'partials/header.php';
//fetch post from database if id is set
if(isset($_GET['id'])){
    $id = filter_var($_GET['id'],FILTER_SANITIZE_NUMBER_INT);
    $query="SELECT * FROM posts WHERE id=$id";
    $result=mysqli_query($connection,$query);
    $post = mysqli_fetch_assoc($result);
}
else{
      header('location:'.ROOT_URL.'blog.php');
      die();
} 
?>
    <sectiont class="singlepost">
        <div class="container singlepost_container">
            <h2><?= $post['title'] ?></h2>
            <div class="post_author">
                <?php
                //fetch author from users table using author_id
                $author_id=$post['author_id'];
                $author_query="SELECT * FROM users WHERE id=$author_id";
                $author_result=mysqli_query($connection,$author_query);
                $author = mysqli_fetch_assoc($author_result);
                ?>
                    <div class="post_author-avatar">
                        <img src="./images/<?=$author['avatar']?>">
                    </div>
                    <div class="post_author-info">
                    <h5>By: <?= "{$author['username'] }"?></h5>
                        
                        <small><?= date("M d, Y - H:i",strtotime($post['date_time'])) ?> </small>
</small>
                    </div>
</div>
                <div class="singlepost_thumbnail">
                    <img src="./images/<?= $post['thumbnail'] ?>">
                </div>
                <p>
                    <?= $post['body'] ?>
                </p>
            </div> 
    </sectiont>
    <!--=============END OF SINGLE POST =================-->
    <?php
    include 'partials/footer.php';

?>

 
 