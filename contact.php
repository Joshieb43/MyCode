<?php


echo "You have sucessfully entered your info!!";


    $full_name = $_POST['full_name']; // required
    $address = $_POST['address']; // required
    $telephone = $_POST['telephone']; // required
    $comments = $_POST['comments']; // required


    //name | address       | phoneNum     | notes


require('../creds.php');


$dbc = mysqli_connect( $host, $user, $pass, $db );




    // Probably should check to make sure the connection was successful
    // But I'm too lazy...
    $qry = "INSERT INTO Customers (name,address,phoneNum,notes) VALUES 
            ('$full_name','$address','$telephone','$comments')";


    mysqli_query($dbc, $qry);



?>