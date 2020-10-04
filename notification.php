<?php
include 'connection.php';

$q="select * from items where quantity='0'";
$result=$con->query($q);



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
<div class="container-fluid">
    <br>
    <div align="center" >
        <h1>Products not available</h1>
        <a href="home.php" class="btn btn-primary">Back</a>
    </div>
    <br>
    <table class="table table-striped table-condensed ">
        <tr>
            <th>id</th>
            <th>Item Code</th>
            <th>Item Description</th>
            <th>Item Type</th>
            <th>Item Quantity</th>
            <th>Item Size</th>
            <th>Item Price</th>
            <th>Image</th>
            <th>Status</th>
        </tr>
        <?php
        while($res=mysqli_fetch_assoc($result)) {
            ?>
            <tr>
                <td><?php echo $res['id']?></td>
                <td><?php echo $res['code']?></td>
                <td><?php echo $res['description']?></td>
                <td><?php echo $res['type']?></td>
                <td><?php echo $res['quantity']?></td>
                <td><?php echo $res['size']?></td>
                <td><?php echo $res['price']?></td>
              

                <td>
                    <img src="<?php echo $res['image']?>" height="100px" width="100px" alt="..." class="img-thumbnail">
                </td>
                <td>
                    <a href="view_product.php?id=<?php echo $res['id']?>" class="btn btn-primary">View</a>
                </td>
            </tr>
            <?php
        }
        ?>
    </table>
</div>
</body>
</html>