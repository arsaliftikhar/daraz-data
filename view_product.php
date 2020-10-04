<?php
include 'connection.php';


$id=$_GET['id'];
$q="select * from items where id='$id'";
$result=$con->query($q);
$res=$result->fetch_assoc();

$GetCode=$res['code'];
$GetDescription=$res['description'];
$GetType=$res['type'];
$GetQuantity=$res['quantity'];
$GetSize=$res['size'];
$GetPrice=$res['price'];
$GetImage=$res['image'];

if (isset($_POST['update']))
{
    $Description=$_POST['description'];
    $Code=$_POST['code'];
    $Type=$_POST['type'];
    $Quantity=$_POST['quantity'];
    $Size=$_POST['size'];
    $Price=$_POST['price'];


    $qy="UPDATE `items` SET `description`='$Description',`code`='$Code',`type`='$Type',`size`='$Size',`quantity`='$Quantity',`price`='$Price' WHERE id='$id'";
    $result1=$con->query($qy);
    if ($result1)
    {
        header('location:updated_message.php');
    }
    else
    {
        echo "<script>alert('Record Not Updated')</script>";
    }

}




if (isset($_POST['remove']))
{
    $DeleteQuery="delete from items where id='$id'";
    $DeleteResult=$con->query($DeleteQuery);
    if ($DeleteResult)
    {
        header('location:delete_message.php');
    }
    else
    {
        echo "<script>alert('Something went wrong')</script>";
    }
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
    <h1 align="center">Daraz Data</h1>
    <br>
    <br>
    <div class="col-sm-6">
        <form method="post">
            <div class="form-group">
                <label >Item Name / Description</label>
                <input type="text" name="description" value="<?php echo $GetDescription;?>" class="form-control" required>
            </div>
            <div class="form-group">
                <label >Item Code</label>
                <input type="number" name="code" value="<?php echo $GetCode;?>" class="form-control" required>
            </div>
            <div class="form-group">
                <label >Item Type</label>
                <input type="text" name="type" value="<?php echo $GetType;?>" class="form-control" required>
            </div>
            <div class="form-group">
                <label >Item Size</label>
                <input type="text" name="size" value="<?php echo $GetSize;?>" class="form-control" required>
            </div>


            <div class="form-group">
                <label >Quantity</label>
                <input type="number" name="quantity" min="0" value="<?php echo $GetQuantity;?>" class="form-control" required>
            </div>
            <div class="form-group">
                <label >Price</label>
                <input type="number" name="price" min="1" value="<?php echo $GetPrice;?>" class="form-control" required>
            </div>


            <button type="submit" name="update" class="btn btn-success">Update</button>
            <button type="submit" name="remove" class="btn btn-danger">Remove</button>
        </form>
    </div>

    <div class="col-sm-offset-1 col-sm-5">

        <img src="<?php echo $GetImage?>" height="300px" width="240px" alt="..." class="img-thumbnail">
        <br>
        <br>
        <a href="home.php" class="btn btn-primary">Back</a>



    </div>
</div>
</body>
</html>