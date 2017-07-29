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
       include("php scripts/init.php");

?>
	  <div class="form-header ">
            <h3> Admin Dashboard</h3>
        </div>
      <ul class="list-group">
          <li class="list-group-item justify-content-between">
            <img src="img/1.jpg" class="img-fluid common-img">
              Breakfast
              <span class="badge badge-primary badge-pill">1400 Kg</span>
          </li>
          <li class="list-group-item justify-content-between">
              <img src="img/2.jpg" class="img-fluid common-img">
              Dahi Bajri Methi
              <span class="badge badge-primary badge-pill">200 Kg</span>
          </li>
          <li class="list-group-item justify-content-between">
              <img src="img/3.jpg" class="img-fluid common-img">
              Jeera
              <span class="badge badge-primary badge-pill">30 Kg</span>
          </li>
           <li class="list-group-item justify-content-between">
              <img src="img/4.jpg" class="img-fluid common-img">
              Khichdi
              <span class="badge badge-primary badge-pill">40 Kg</span>
          </li>
           <li class="list-group-item justify-content-between">
              <img src="img/5.jpg" class="img-fluid common-img">
              Low Calorie
              <span class="badge badge-primary badge-pill">56 Kg</span>
          </li>
           <li class="list-group-item justify-content-between">
              <img src="img/6.jpg" class="img-fluid common-img">
              Methi Masala
              <span class="badge badge-primary badge-pill">45 Kg</span>
          </li>
           <li class="list-group-item justify-content-between">
              <img src="img/7.jpg" class="img-fluid common-img">
              Nachni
              <span class="badge badge-primary badge-pill">12 Kg</span>
          </li>
           <li class="list-group-item justify-content-between">
              <img src="img/8.jpg" class="img-fluid common-img">
              Peppery Oats
              <span class="badge badge-primary badge-pill">9 Kg</span>
          </li>
           <li class="list-group-item justify-content-between">
              <img src="img/9.jpg" class="img-fluid common-img">
              Punjabi Masala
              <span class="badge badge-primary badge-pill">9 Kg</span>
          </li>
      </ul>

</div
    </body>

</html>