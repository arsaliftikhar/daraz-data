<?php
include 'connection.php';
error_reporting(0);
session_start();
if (isset($_SESSION['username']))
{
    $Username=$_SESSION['username'];

    $qyy="select * from items where quantity='0'";
    $resultt=$con->query($qyy);
    $num=$resultt->num_rows;


   if (isset($_POST['submit']))
   {

       $Description=$_POST['description'];
       $Code=$_POST['code'];
       $Type=$_POST['type'];
       $Size=$_POST['size'];
       $Quantity=$_POST['quantity'];
       $Price=$_POST['price'];
       $files =$_FILES['image'];

       $filename = $files['name'];
       $fileerror = $files['error'];
       $filetemp = $files['tmp_name'];
       $size = $files['size'];
       $filetext = explode('.',$filename);
       $filecheck = strtolower(end($filetext));
       $fileextstore= array('png','jpg','jpeg');


       $q="select * from items where code='$Code'";
       $result1=$con->query($q);
       if ($result1->num_rows>0)
       {
           echo "<script>alert('Item Code Already In Record')</script>";
       }

    elseif ($Description=='' || $Code=='' || $Type=='' || $Size=='' || $Quantity=='' || $Price=='')
    {
        echo "<script>alert('Please fill all data')</script>";
    }
    elseif(in_array($filecheck,$fileextstore))
    {

        $destinationfile = 'images/'.md5(rand()).'-'.$filename;
        move_uploaded_file($filetemp,$destinationfile);
        $sql="INSERT INTO items( `description`, `code`, `type`, `size`, `quantity`, `price`, `image`) 
              VALUES ('$Description','$Code','$Type','$Size','$Quantity','$Price','$destinationfile') ";

        $result= $con->query($sql);

        if ($result)
        {
            echo "<script>alert('Record inserted')</script>";
        }
        else
        {
            echo "<script>alert('something went wrong')</script>";
        }
    }
       //echo $Description.$Code.$Type.$Size.$Quantity.$Price.$Image;
   }



   if (isset($_POST['search_btn']))
   {
       $Search=$_POST['search'];

       $qy="select * from items where code='$Search'";
       $result2=$con->query($qy);
       if ($result2->num_rows>0)
       {
           $res=$result2->fetch_assoc();

           $GetId=$res['id'];
           $GetCode=$res['code'];
           $GetDescription=$res['description'];
           $GetType=$res['type'];
           $GetQuantity=$res['quantity'];
           $GetSize=$res['size'];
           $GetPrice=$res['price'];
           $GetImage=$res['image'];


           $Message="   <img src=\" $GetImage\" height=\"300px\" width=\"240px\" alt=\"...\" class=\"img-thumbnail\">
            <br>
            <br>
            Item Code: <b>$GetCode</b>
            <br>
            Item Description: <b>$GetDescription</b>
            <br>
            Item Type: <b>$GetType</b>
            <br>
            Item Size: <b>$GetSize</b>
            <br>
            Item Quantity: <b>$GetQuantity</b>
            <br>
            Item Price: <b>$GetPrice</b>
            <br>
            Order Now: <b>Whatsapp(03451005443)</b>
             <br>
             Whatsapp business link: https://wa.me/c/923451005443
             <br>
             <br>
             <b>*****CASH ON DELIVERY*****</b>
        <br>
        <br>
        <a href=\"view_product.php?id=$GetId\" class=\"btn btn-primary\">View</a>";
       }
       else
       {

           echo "<script>alert('not found data')</script>";
       }

   }
}
else
{

    header('location:logout.php');


}


?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <title>Welcome</title>
</head>
<body>
<div class="container">
 <div class="row">
     <h2 align="center">Welcome:<b style="text-transform: capitalize;"><?php echo $Username;?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="text-align: right" href="logout.php" class="btn btn-primary">Logout</a></b></h2>

 </div>
    <div class="col-sm-6">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label >Item Name / Description</label>
                <input type="text" name="description" class="form-control" required>
            </div>
            <div class="form-group">
                <label >Item Code</label>
                <input type="number" name="code" class="form-control" required>
            </div>
            <div class="form-group">
                <label >Item Type</label>
                <input type="text" name="type" class="form-control" required>
            </div>
            <div class="form-group">
                <label >Item Size</label>
                <input type="text" name="size" class="form-control" required>
            </div>
            <div class="form-group">
                <label >Quantity</label>
                <input type="number" name="quantity" min="1" class="form-control" required>
            </div>
            <div class="form-group">
                <label >Price</label>
                <input type="number" min="1" name="price" class="form-control" required>
            </div>


            <div class="form-group">
                <label for="exampleInputFile">Select Item</label>
                <input type="file" required name="image" id="exampleInputFile">
            </div>

            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-default">Reset</button>
        </form>
    </div>

    <div class="col-sm-offset-1 col-sm-5">
        <br>
        <a href="view_all.php" class="btn btn-primary">View All Products</a>
        <a href="notification.php" class="btn btn-primary">
            Notifications <span class="badge badge-light"><?php echo $num;?></span>
        </a>
        <br>
        <br>
        <form action="" method="post">
            <label >Item Code</label>
            <div class="form-group form-inline">
                <input type="number" name="search" class="form-control" required>
                <button type="submit" name="search_btn" class="btn btn-primary glyphicon glyphicon-search"></button>
            </div>
        </form>
        <?php echo $Message;?>



    </div>
</div>
</body>
</html>