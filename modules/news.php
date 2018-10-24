<?php
$category = isset($_GET['page'])&&is_numeric($_GET['page'])?$_GET['page']:0;        //sa 0 podrazumjevanu stranu smo promjenili smo na 0
$q = mysqli_query($conn, "select images.image, news.date, news.headline, news.content, news.id_news from news join 
categories on news.id_category = categories.id_category join images on news.id_image = images.id_image ORDER BY date DESC");
?>
<h1>Latest News from US National Leagues</h1>
<?php
while($rw=mysqli_fetch_object($q)) {
?>
	<div class="news">
			<figure>
				<a href="?page=6&nid=<?php echo $rw->id_news; ?>">
				<img src="<?php echo $rw->image; ?>" alt="image"></a>
				<figcaption>
				</figcaption>
			</figure>
			<h3><a href="?page=6&nid=<?php echo $rw->id_news; ?>"><?php echo $rw->headline; ?></a></h3>
			<p class="date"><?php echo $rw->date; ?></p>
			<p class="content"><?php echo nl2br($rw->content); ?></p>
		<p class="readmore"><a href="?page=6&nid=<?php echo $rw->id_news; ?>">Read more...</a></p>
	</div>
<?php
}
?>


<!-- select images.image, news.headline, news.content from news join categories on news.id_category = categories.id_category join images on news.id_image = images.id_image (sve)-->

<!-- select * from news where id_category = $category (jedna kategorija, bez slika, pa ne valja)-->

<!-- select images.image, news.headline, news.content from news join images on news.id_image = images.id_image where id_category = $category (sve za jednu kategoriju)-->



<!-- select id_category, name, headline, content from categories join news on categories.id_category = news.id_category;  -->



 