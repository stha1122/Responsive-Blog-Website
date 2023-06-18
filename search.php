<?php
require 'partials/header.php';



if(isset($_GET['search']) && isset($_GET['submit'])){
    $search = filter_var($_GET['search'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $query = "SELECT * FROM posts WHERE title LIKE '%$search%' ORDER BY date_time DESC";
    $posts=mysqli_query($connection,$query);
}
else{
    header('location:'.ROOT_URL.'blog.php');
    die();
}
?>

<section class="searched">
<section class="posts <?= $posts ? '': 'section_extra-margin' ?>">
    <div class="container posts_container">
        <?php while($post = mysqli_fetch_assoc($posts)) : ?>
        <article class="post">
        <a href="<?= ROOT_URL?>post.php?id=<?=$post['id'] ?>"> <div class="post_thumbnail">
                <img src="./images/<?= $post['thumbnail']?>">
            </div> </a>
            <div class="post_info">
            <?php
            //fetch category from categories table using category_id of post
            $category_id=$post['category_id'];
            $catgeory_query="SELECT * FROM categories WHERE id=$category_id";
            $category_result=mysqli_query($connection,$catgeory_query);
            $category = mysqli_fetch_assoc($category_result);
            $category_title=$category['title'];
            ?>
                <a href="<?= ROOT_URL ?>category-posts.php?id=<?= $post['category_id']?>" class="category_button"><?= $category['title']?></a>
               
                <h3 class="post_title">
                   <?= $post['title']?>
                </h3>
              <p class="post_body">
              <?= substr($post['body'],0,150)?>...
            </p> 
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
                    <h4>By:<?= "{$author['firstname']} {$author['lastname']}"?></h4>
                        
                        <small><?= date("M d, Y - H:i",strtotime($post['date_time'])) ?> </small>
</small>
                    </div>
                </div>
            </div>
        </article>
        <?php endwhile ?>
    </div>
</section>
        </section>
<!--=============================END OF POSTS=========================-->

<?php 
include 'partials/footer.php'
?>