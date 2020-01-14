<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Form Tambah Data Siswa</h3>
                </div>
                <div class="panel-body">
                    <!--membuat form untuk tambah data-->
                    <form class="form-horizontal" action="" method="post">
                        <div class="form-group">
                            <label for="tahun" class="col-sm-3 control-label">Tahun</label>
                            <div class="col-sm-9">
                                <input type="text" name="tahun" class="form-control" id="inputEmail3" placeholder="Tahun">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="laki_laki" class="col-sm-3 control-label">Laki-laki</label>
                            <div class="col-sm-9">
                                <input type="text" name="laki_laki" class="form-control" id="inputEmail3" placeholder="Laki-laki" >
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="perempuan" class="col-sm-3 control-label">Perempuan</label>
                            <div class="col-sm-9">
                                <input type="text" name="perempuan" class="form-control" id="inputEmail3" placeholder="Perempuan">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="jumlah_siswa" class="col-sm-3 control-label">Jumlah Keseluruhan</label>
                            <div class="col-sm-9">
                                <input type="text" name="jumlah_siswa" class="form-control" id="inputEmail3" placeholder="Jumlah Keseluruhan" >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success">
                                    <span class="fa fa-edit"></span> Tambah Data Siswa</button>
                            </div>
                        </div>
                    </form>


                </div>
                <div class="panel-footer">
                    <a href="?page=tatabusana&actions=tampil" class="btn btn-danger btn-sm">
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
    $sql="INSERT INTO tbl_pemasaran VALUES ('','$tahun','$laki_laki','$perempuan','$jumlah_siswa')";
    $query=  mysqli_query($koneksi, $sql) or die ("SQL Simpan Data Error");
    if ($query){
        echo "<script>window.location.assign('?page=pemasaran&actions=tampil');</script>";
    }else{
        echo "<script>alert('Simpan Data Gagal');<script>";
    }
    }

?>
