<html>
<link rel="stylesheet" type="text/css" href="myProjectCss.css">

<header class="wrapper clearfix">
    <a href="index.php">BANANA REPO</a>

    <div id="banner">
        <div id="logo"><a href="index.php"><img src="banana.jpg" width=250 height=150 lt="logo"></a></div>
    </div>


    <div id="cssmenu">
        <ul>
            <li class="current"><a href="home.phtml">Home</a></li>
            <li><a href="shop.phtml">Shop</a></li>
            <li><a href="contact.phtml">Contact</a></li>
            <li><a href="about.phtml">About Bananas</a></li>
        </ul>
    </div>



</header><!-- end header -->

<body id="home">
<?php


require('../creds.php');


$dbc = mysqli_connect( $host, $user, $pass, $db );


$qry=("Select product_desc,product_name from Products WHERE product_name='Cavendish bananas'");



$r=mysqli_query($dbc, $qry);

while($row = mysqli_fetch_array( $r ))
{
    echo "<p>\n</p>","<h1>",$row['product_name']," - ", $row["product_desc"],"</h1>";
}




?>
</body>
<footer>
    <div id="colophon" class="wrapper clearfix">
        Author:Joshua Budimir
        <a href="home.phtml">@BananaRepoLLC</a>
    </div>

</footer>

</html>

