<?php 

include 'header.php';


?>

<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">


    </div>

    <div class="col-md-12">
      <div class="title_right">
        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">

          <form action="" method="POST">
            <div class="input-group">
              <input type="text" class="form-control" name="aranan" placeholder="Anahtar Kelime Giriniz...">
              <span class="input-group-btn">
                <button class="btn btn-default" type="submit" name="arama">Ara!</button>
              </span>
            </div>
          </form>
        </div>
      </div>
    </div>


    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
             <div align="left" class="col-md-6">
              <h2 >S.S.S İşlemleri <small>
                <?php
                echo $say." kayıt listelendi.";
                if (@$_GET['durum']=='ok') {?> 
                
                <b style="color:green;">İşlem başarılı...</b>

                <?php } elseif (@$_GET['durum']=='no')  {?>

                <b style="color:red;">İşlem Başarısız...</b>

                <?php } ?></small></h2><br>
              </div>
              <div align="right" class="col-md-6">
                <a href="sss-ekle.php"><button  class="btn btn-danger "><i class="fa fa-plus" aria-hidden="true"></i> Yeni Ekle</button></a>
              </div>
              <div class="clearfix"></div>
            </div>


            <div class="x_content">
              <div class="table-responsive">
                <table class="table table-striped jambo_table bulk_action">
                  <thead>
                    <tr class="headings">

                      <th  width="700" class="column-title ">Sık Sorulan Başlık </th>

                      <th></th>
                      <th></th>
                    


                    </tr>
                  </thead>

                  <tbody>

                    <?php

                     $sayfada = 25; // sayfada gösterilecek içerik miktarını belirtiyoruz.


                     $sorgu=$db->prepare("select * from sss");
                     $sorgu->execute();
                     $toplam_sss=$sorgu->rowCount();

                     $toplam_sayfa = ceil($toplam_sss / $sayfada);

                  // eğer sayfa girilmemişse 1 varsayalım.
                     $sayfa = isset($_GET['sayfa']) ? (int) $_GET['sayfa'] : 1;

          // eğer 1'den küçük bir sayfa sayısı girildiyse 1 yapalım.
                     if($sayfa < 1) $sayfa = 1; 

        // toplam sayfa sayımızdan fazla yazılırsa en son sayfayı varsayalım.
                     if($sayfa > $toplam_sayfa) $sayfa = $toplam_sayfa; 

                     $limit = ($sayfa - 1) * $sayfada;



                     if(isset($_POST['arama'])) {

                      $aranan=$_POST['aranan'];

                      $ssssor=$db->prepare("select * from sss where sss_ad LIKE ? order by sss_id ASC limit $limit,$sayfada");
                      $ssssor->execute(array("%$aranan%"));
                      $say=$ssssor->rowCount();


                    } else {


                     $ssssor=$db->prepare("select * from sss order by sss_id DESC limit $limit,$sayfada");
                     $ssssor->execute();
                     $say=$ssssor->rowCount();


                   }



                   while($ssscek=$ssssor->fetch(PDO::FETCH_ASSOC)) {
                    ?>


                    <tr>

                      <td ><?php echo $ssscek['sss_ad']; ?></td>
                 

                      <td width="20"  class="text-center"><a href="sss-duzenle.php?sss_id=<?php echo $ssscek['sss_id']; ?>"><button style="width:80px;" class="btn btn-primary btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Düzenle</button></a></td>

                      <td width="20" class="text-center"><a href="../netting/islem.php?ssssil=ok&sss_id=<?php echo $ssscek['sss_id']; ?>&sss_resimyol=<?php echo $ssscek['sss_resimyol']; ?>"><button style="width:80px;" class="btn btn-danger btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Sil</button></a></td>

                    </tr>

                    <?php } ?>

                  </tbody>
                </table>

                 <div align="right" class="col-md-12">
            <ul class="pagination">

              <?php

              $s=0;

              while ($s < $toplam_sayfa) {

                $s++; ?>

                <?php 

                if ($s==$sayfa) {?>

                <li class="active">

                  <a href="sss.php?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

                </li>

                <?php } else {?>


                <li>

                  <a href="sss.php?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

                </li>
                
                <?php   }

              }

              ?>

            </ul>
          </div>
              </div>

            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
<!-- /page content -->



<?php include 'footer.php'; ?>
