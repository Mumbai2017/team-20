<?php
$query1="SELECT * from product where flavor='$';";
if($query_run1=mysqli_query($query1)){
    while($query_row=mysqli_fetch_assoc($query_run1)){
        $cost = $query_row['cost'];
        $description = $query_row['description'];
    }
}
?>