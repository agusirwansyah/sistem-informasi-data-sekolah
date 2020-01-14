<?php
$no=$_GET['no'];
$ambil=  mysqli_query($koneksi, "SELECT * FROM tbl_perhotelan WHERE no ='$no'") or die ("SQL Edit error");
$data= mysqli_fetch_array($ambil);
?>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Form Update Data Siswa</h3>
                </div>
                <div class="panel-body">
                    <!--membuat form untuk tambah data-->
                    <form class="form-horizontal" action="" method="post">
						<div class="form-group">
                            <label for="tahun" class="col-sm-3 control-label">Tahun</label>
                            <div class="col-sm-9">
                                <input type="text" name="tahun" value="<?=$data['tahun']?>"class="form-control" id="inputEmail3" placeholder="Tahun">
                            </div>
                        </div>
						<div class="form-group">
                            <label for="laki_laki" class="col-sm-3 control-label">Laki-laki</label>
                            <div class="col-sm-9">
                                <input type="text" name="laki_laki" value="<?=$data['laki_laki']?>"class="form-control" id="inputEmail3" placeholder="Laki-laki" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="perempuan" class="col-sm-3 control-label">Perempuan</label>
                            <div class="col-sm-9">
                                <input type="text" name="perempuan" value="<?=$data['perempuan']?>"class="form-control" id="inputEmail3" placeholder="Perempuan">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="jumlah_siswa" class="col-sm-3 control-label">Jumlah Keseluruhan</label>
                            <div class="col-sm-9">
                                <input type="text" name="jumlah_siswa" value="<?=$data['jumlah_siswa']?>"class="form-control" id="inputEmail3" placeholder="Jumlah Keseluruhan" >
                            </div>
                        </div>     
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success">
                                    <span class="fa fa-edit"></span> Update Data Siswa</button>
                            </div>
                        </div>
                    </form>


                </div>
                <div class="panel-footer">
                    <a href="?page=perhotelan&actions=tampil" class="btn btn-danger btn-sm">
                        Kembali Ke Data Siswa
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>

<?php 
if($_POST){
    //Ambil data dari form
    $tahun=$_POST['tahun'];
    $laki_laki=$_POST['laki_laki'];
	$perempuan=$_POST['perempuan'];
    $jumlah_siswa=$_POST['jumlah_siswa'];
    //buat sql
    $sql="UPDATE tbl_perhotelan SET tahun='$tahun',laki_laki='$laki_laki',perempuan='$perempuan',jumlah_siswa='$jumlah_siswa' WHERE no ='$no'"; 
    $query=  mysqli_query($koneksi, $sql) or die ("SQL Edit MHS Error");
    if ($query){
        echo "<script>window.location.assign('?page=perhotelan&actions=tampil');</script>";
    }else{
        echo "<script>alert('Edit Data Gagal');<script>";
    }
    }

?>



