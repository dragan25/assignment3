<?php 
include "comments.php";
date_default_timezone_set('Europe/Copenhagen');
$id_news = isset($_GET['nid'])&&is_numeric($_GET['nid'])?$_GET['nid']:0;   
$q = mysqli_query($conn, "select images.image, images.author, news.date, news.headline, news.content from news join images on news.id_image = images.id_image where id_news = {$id_news}");
$rw=mysqli_fetch_object($q);
if(!$rw){
	echo "News does not exists!";
} else {
?>
<div class="single_news">
	<h2><?php echo $rw->headline; ?></h2>
	<p class="date"><?php echo $rw->date; ?></p>
	<figure>
	<img src="<?php echo $rw->image; ?>" alt="image">
	<figcaption><i><?php echo $rw->author; ?></i></figcaption>
	</figure>
	<p><?php echo nl2br($rw->content); ?></p>
</div>
<br><br><hr>
<?php 
}
?>
<?php
if(isset($_SESSION['username'])){  
	echo 
	"<form method='POST' action='".setComments($conn)."'>
		<input type='hidden' name='username' value='".$_SESSION['username']."'>
		<input type='hidden' name='date' value='".date('Y-m-d H:i:s')."'>
		<input type='hidden' name='id_news' value='".$id_news."'>
		<textarea name='message' rows='3' cols='71'></textarea><br>
		<button type='submit' name='commentSubmit'>Comment</button>
	</form>";
} else {
	echo "<a href='user_login/index.html'>You need to be logged in to comment!</a><br><br>";
}
getComments($conn);
// print_r($_SESSION);
?>