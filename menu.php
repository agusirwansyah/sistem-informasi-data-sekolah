<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">

    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="?page=utama">Sistem Informasi Data Sekolah SMK Negeri 1 Kisaran</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.php">Home</a></li>

                <?php if(isset($_SESSION['level']) && $_SESSION['level']==1) { ?>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Master Data <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="?page=struktur&actions=tampil">Struktur</li>
                        <li><a href="?page=guru&actions=tampil">Kepegawaian/Guru</a></li>
                    </ul>
                </li>
                 <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Jurusan <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="?page=tataboga&actions=tampil">Jasa Boga</a></li>
                        <li><a href="?page=tatabusana&actions=tampil">Tata Busana</a></li>
                        <li><a href="?page=perkantoran&actions=tampil">Perkantoran</a></li>
                        <li><a href="?page=akuntansi&actions=tampil">Akuntansi</a></li>
                        <li><a href="?page=pemasaran&actions=tampil">Pemasaran</a></li>
                        <li><a href="?page=perhotelan&actions=tampil">Perhotelan</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Reports <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="?page=tataboga&actions=report">Jasaboga</a></li>
						<li><a href="?page=tatabusana&actions=report">Tatabusana</a></li>
                        <li><a href="?page=perkantoran&actions=report">Perkantoran</a></li>
                        <li><a href="?page=akuntansi&actions=report">Akuntansi</a></li>
                        <li><a href="?page=pemasaran&actions=report">Pemasaran</a></li>
                        <li><a href="?page=perhotelan&actions=report">Perhotelan</a></li>
                    </ul>
                </li>
                <li><a href="?page=user&actions=tampil">User</a></li>
               <?php } 
                
                 elseif (isset($_SESSION['level']) && $_SESSION['level']==2) { ?>
                     <li><a href="?page=guru&actions=tampil">Kepegawaian/Guru</a></li>
                
                <?php } ?>

                <li><a href="?page=about&actions=tampil">About</a></li>
                <li><a href="?page=kontak&actions=tampil">Contact</a></li>

                    <?php if (isset($_SESSION['username'])) { ?>
                    <li><a href="logout.php">Logout</a></li>
                <?php } ?>


            </ul>

        </div>
    </div>
</nav>
