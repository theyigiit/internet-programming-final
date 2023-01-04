<?php 

include 'header.php';

if(isset($_POST['arama'])) {

  $aranan=$_POST['aranan'];

  $emlaksor=$db->prepare("select * from emlak where emlak_ad LIKE '%$aranan%' order by emlak_id ASC limit 25");
  $emlaksor->execute();
  $say=$emlaksor->rowCount();

  
} else {


  $emlaksor=$db->prepare("select * from emlak order by emlak_zaman DESC limit 25");
  $emlaksor->execute(array(
    'emlak_ust' => 0
    ));
  $say=$emlaksor->rowCount();


}
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
              <h2 >Emlak İşlemleri <small>
                <?php
                echo $say." kayıt listelendi.";
                if (@$_GET['durum']=='ok') {?> 
                
                <b style="color:green;">İşlem başarılı...</b>

                <?php } elseif (@$_GET['durum']=='no')  {?>

                <b style="color:red;">İşlem Başarısız...</b>

                <?php } ?></small></h2><br>
              </div>
              <div align="right" class="col-md-6">
                <a href="emlak-ekle.php"><button  class="btn btn-danger "><i class="fa fa-plus" aria-hidden="true"></i> Yeni Ekle</button></a>
              </div>
              <div class="clearfix"></div>
            </div>


            <div class="x_content">
              <div class="table-responsive">
                <table class="table table-striped jambo_table bulk_action">
                  <thead>
                    <tr class="headings">

                      <th class="column-title ">Emlak Foto</th>

                      <th class="column-title text-center">Emlak Başlık </th>
                      <th class="column-title text-center">Emlak Fiyat </th>
                      <th class="column-title text-center">Emlak Durum </th>

                      <th width="80" class="column-title"></th>
                      <th width="80" class="column-title"></th>
                      <th width="80" class="column-title"></th>


                    </tr>
                  </thead>

                  <tbody>

                    <?php 


                    
                    while($emlakcek=$emlaksor->fetch(PDO::FETCH_ASSOC)) {

                      $emlak_id=$emlakcek['emlak_id'];
                      ?>



                      <tr>

                        <td width="100" ><img width="130" height="70" src="../../<?php echo $emlakcek['emlak_resimyol']; ?>"></td>

                        <td class="text-center"><?php echo $emlakcek['emlak_baslik']; ?></td>

                        <td class="text-center"><?php echo $emlakcek['emlak_fiyat']; ?> TL</td>
                        <td class="text-center"><?php echo $emlakcek['emlak_durum']; ?> </td>

                        <td class="text-center"><a href="emlak-galeri.php?emlak_id=<?php echo $emlakcek['emlak_id']; ?>"><button  class="btn btn-success btn-xs"><i class="fa fa-images" aria-hidden="true"></i> Resim İşlemleri</button></a></td>

                        
                        <td class="text-center"><a href="emlak-duzenle.php?emlak_id=<?php echo $emlakcek['emlak_id']; ?>"><button style="width:80px;" class="btn btn-primary btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Düzenle</button></a></td>
                        
                        <td class="text-center"><a href="../netting/islem.php?emlaksil=ok&emlak_id=<?php echo $emlakcek['emlak_id']; ?>"><button style="width:80px;" class="btn btn-danger btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Sil</button></a></td>

                      </tr>

                      <?php 
                      $altemlaksor=$db->prepare("select * from emlak where emlak_ust=:emlak_id order by emlak_sira");
                      $altemlaksor->execute(array(
                        'emlak_id' => $emlak_id
                        ));
                      
                      while($altemlakcek=$altemlaksor->fetch(PDO::FETCH_ASSOC)) {
                        ?>

                        <tr>

                          <td ><b>----</b> &nbsp;&nbsp;<?php echo $altemlakcek['emlak_ad']; ?></td>

                          <td class="text-center"><?php echo $altemlakcek['emlak_sira']; ?></td>

                          <td class="text-center"><?php 

                            if ($altemlakcek['emlak_durum']=="1") {

                             echo "AKTİF";

                           } else {

                            echo "PASİF";
                          }

                          ?></td>

                          <td class="text-center"><a href="emlak-duzenle.php?emlak_id=<?php echo $altemlakcek['emlak_id']; ?>"><button style="width:80px;" class="btn btn-primary btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Düzenle</button></a></td>

                          <td class="text-center"><a href="../netting/islem.php?emlaksil=ok&emlak_id=<?php echo $altemlakcek['emlak_id']; ?>"><button style="width:80px;" class="btn btn-danger btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Sil</button></a></td>

                        </tr>



                        <?php } } ?>

                      </tbody>
                    </table>
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
