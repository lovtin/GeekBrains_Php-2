<main>
	<?php
		if (isset($catalog)) {
			foreach ($catalog as $product) {
				echo '<div><a href="index.php?c=page&act=product&id=' . $product["id"] . '"><img src="'. $product["image"] . '" alt="Изображение" title="'. $product["title"] . '"></a>
				<span>'. $product["title"] . '</span></div>';
			}
		}
	?>
</main>