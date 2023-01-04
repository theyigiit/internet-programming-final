<?php 
include 'header.php'; 

?>

<div role="main" class="main">
	<div class="container">
		<div class="row pt-xl">

			<div class="col-md-9">

				<h1 class="mt-xl mb-none">Sık Sorulanlar</h1>
				<div class="divider divider-primary divider-small mb-xl">
					<hr>
				</div>

				<div class="row">

                    <div class="toggle toggle-primary col-md-11" data-plugin-toggle>

                        <?php 

                        $ssssor=$db->prepare("select * from sss order by sss_sira DESC");
                        $ssssor->execute();

                        while($ssscek=$ssssor->fetch(PDO::FETCH_ASSOC)) {
                            ?>


                            <section class="toggle">
                                <label><?php echo $ssscek['sss_ad']; ?></label>
                                <p><?php echo strip_tags($ssscek['sss_detay']); ?></p>
                            </section>

                          

                            <?php } ?>


                        </div>



                    </div></div>




                    <!-- Sidebar -->


                    <?php include 'rightbar.php'; ?>

                </div>

            </div>
        </div>

        <?php include 'footer.php'; ?>
