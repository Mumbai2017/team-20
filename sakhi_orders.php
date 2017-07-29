<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/mdb.css">
    <link rel="stylesheet" type="text/css" href="css/mdb.min.css">
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/compiled.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

    <script type="text/javascript" src="js/jquery.js"></script>

    <script>
        $(document).ready(function() {
            $("#btn-submit").click(function(){
                var senddata = $('#loginform').serialize();
                $.ajax({
                    type:"POST",
                    url:"http://192.168.43.169/practice/login.php",
                    data: senddata,
                    success: function(result){
                        var res = $.trim(result);

                        if(res=="correct")
                        {
                            window.location.replace("details.html");

                        }
                        if(res=="incorrect")
                        {
                            alert("incorrect");
                        }
                    }});
            });


        });
    </script>
</head>
<body>
<?php
$conn = mysqli_connect("localhost","root","","sanisa");
$sql="select name from customer where id=1";
$res=mysqli_query("$conn",$sql);
if(mysqli_num_rows($res)>0)
{
    while($row=mysqli_fetch_assoc($res))
    {
       echo "<ul class=\"list-group\">
    <li class=\"list-group-item justify-content-between\">
        <span class=\"badge badge-primary badge-pill\">$row[name]</span>
        <button type=\"button\" class=\"btn btn-success\" data-toggle=\"modal\" data-target=\"#orderModal\">Confirm</button>
        <button type=\"button\" class=\"btn btn-info\" data-toggle=\"modal\" data-target=\"#updateModal\">Redirect</button>
    </li>
</ul>
";
    }
}
?>



<div class="modal fade" id="orderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="exampleModalLabel">Place Order</h4>
            </div>
            <div class="modal-body">
                <input type="text" name="qty" placeholder="Enter Quantity"></input>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Order Now</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="exampleModalLabel">Place Order</h4>
            </div>
            <div class="modal-body">
                <input type="text" name="qty" placeholder="Enter Quantity"></input>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-danger">Add</button>
                <button type="button" class="btn btn-primary">Deduct</button>
            </div>
        </div>
    </div>
</div>

</body>
<script type="text/javascript">
    $('#orderModal').modal('show');
    $('#updateModal').modal('show');
</script>
</html>