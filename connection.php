<?php
$con=new mysqli('localhost','root','','daraz');
if ($con)
{
    echo "";
}
else
{
    echo "not connect";
}