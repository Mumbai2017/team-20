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

    <script id="source" language="javascript" type="text/javascript">

        $(function ()
        {
            $.ajax({
                url: "http://10.49.191.59//details.php",                  //the script to call to get data
                data: "",                        //you can insert url argumnets here to pass to api.php
                                                 //for example "id=5&parent=6"
                dataType: 'json',                //data format
                success: function(data)          //on recieve of reply
                {
                    for (var i=0; i<data.length; i++) {
                        var row = $('<tr><td>' + data[i].id+ '</td><td>' + data[i].name + '</td></tr>');
                        $('#myTable').append(row);
                    }
                }
            });
        });

    </script>

</head>
<body>
<table id="myTable">
    <tr>
        <th>ID</th>
        <th>NAME</th>

    </tr>
</table>



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