<?php
        include 'partials/header.php';
        //fetch post from database if id is set
if(isset($_GET['id'])){
    $id = filter_var($_GET['id'],FILTER_SANITIZE_NUMBER_INT);
    $query="SELECT * FROM posts WHERE category_id=$id ORDER BY date_time DESC";
    $posts=mysqli_query($connection,$query);
}

    else{
        header('location:'.ROOT_URL.'blog.php');
        die();

    }


?>

<header class="category_title">
<h2><?php
            //fetch category from categories table using category_id of post
            $category_id=$id;
            $catgeory_query="SELECT * FROM categories WHERE id=$id";
            $category_result=mysqli_query($connection,$catgeory_query);
            $category = mysqli_fetch_assoc($category_result);
            echo $category['title']
            ?>
</h2> 
</header>




<!--=============================END CATEGORY TITLE=========================-->
<?php if(mysqli_num_rows($posts)>0):?>
<section class="posts">
    <div class="container posts_container">
        <?php while($post = mysqli_fetch_assoc($posts)) : ?>
        <article class="post">
        <a href="<?= ROOT_URL?>post.php?id=<?=$post['id'] ?>"> <div class="post_thumbnail">
                <img src="./images/<?= $post['thumbnail']?>">
            </div> </a>
            <div class="post_info">
             
               
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
                    <h4>By: <?= "{$author['username']}"?></h4>
                        
                        <small><?= date("M d, Y - H:i",strtotime($post['date_time'])) ?> </small>
</small>
                    </div>
                </div>
            </div>
        </article>
        <?php endwhile ?>
    </div>
</section>
<?php else: ?>
    <div class=".alert__message.error.lg">
        <p> No posts found for this category</p>
</div>
    <?php endif ?><!--=====================END OF POSTS=========================-->

<section class="category_buttons">
    <div class="container category_buttons-container">
        <?php
        $all_categories_query ="SELECT * FROM categories";
        $all_categories=mysqli_query($connection,$all_categories_query);
        ?>
        <?php while ($category = mysqli_fetch_assoc($all_categories)) :?>
        <a href="<?= ROOT_URL?>category-posts.php?id=<?= $category['id']?>" class="category_button"><?= $category['title'] ?></a>
        <?php endwhile ?>
     
    </div>
</section>
<!--=============================END OF CATEGORY BUTTONS=========================--> 

<?php
        include 'partials/footer.php';


?>

