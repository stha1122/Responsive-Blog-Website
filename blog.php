<?php
        include 'partials/header.php';
//fetch all posts
        $query="SELECT * FROM posts ORDER BY date_time DESC";
$posts=mysqli_query($connection,$query);
?>

<section class="search_bar">
    <form class="container search_bar-container" action="<?= ROOT_URL ?>search.php" method="GET">
    <div  >
       <div class="icon">  <i class="uil uil-search "></i></div>
        <input type="search" name="search" placeholder="Search">
        <button type="submit" name="submit" class="btn">Go</button>
    </div>

    </form>
</section>


 <!--=============END OF SEARCH=================-->

 <section class="posts <?= $featured ? '': 'section_extra-margin' ?>">
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
                    <h4>By: <?= "{$author['username']} "?></h4>
                        
                        <small><?= date("M d, Y - H:i",strtotime($post['date_time'])) ?> </small>
</small>
                    </div>
                </div>
            </div>
        </article>
        <?php endwhile ?>
    </div>
</section>
<!--=============================END OF POSTS=========================-->

 
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

<?php
        include 'partials/footer.php';


?>


