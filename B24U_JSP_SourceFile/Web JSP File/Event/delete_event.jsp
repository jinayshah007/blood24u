<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="..\CSS\styledeleteevent.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body >
	<div class="header fix">
			<img src="..\Image\logo.png">
				<div class="navbtn">
					<i class="fa fa-bars fa-2x " aria-hidden="true" onclick="openNav()"></i>
				</div>
	</div>
	<div class="nav fix">
			<ul>
				<li class="active"><a href="event_status.jsp">Event Status</a></li>
				<li><a href="donor_entry.jsp" >Donor Entry</a></li>
				<li><a href="e_blood_tips.jsp">Blood Tips</a></li>
				<li><a href="e_contribute.jsp">Contribute</a></li>
				<li><a href="e_about_us.jsp">About Us</a></li>
				<li><a href="e_get_in_touch.jsp">Contact Us</a></li>
			</ul>
		</div>
		<div id="mySidenav" class="sidenav">
  			<a  class="closebtn" onclick="closeNav()">&times;</a>
  			<a href="update_event.jsp" class="a"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
  			<a href="delete_event.jsp" class="b"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
			<i class="fa fa-id-card-o" aria-hidden="true" style="color:white;">
			&nbsp;${sessionScope.id}</i>
			<i class="fa fa-user" aria-hidden="true" style="color:white;">
			&nbsp;${sessionScope.user_full_name}</i>
			<i class="fa fa-envelope" aria-hidden="true" style="color:white;">
			&nbsp;${sessionScope.user_email}</i>
			<i class="fa fa-phone" aria-hidden="true" style="color:white;">
			&nbsp;${sessionScope.user_number}</i>
			<i class="fa fa-calendar" aria-hidden="true" style="color:white;">
			&nbsp;${sessionScope.event_date}</i>
			<i class="fa fa-clock-o" aria-hidden="true" style="color:white;">
			&nbsp;${sessionScope.start_time} &nbsp; to &nbsp; ${sessionScope.end_time}</i>
			<i class="fa fa-location-arrow" aria-hidden="true" style="color:white;">
			&nbsp;${sessionScope.city}</i>
			<div class="btn1" >
				<a href="signout_event.jsp"><input type="button" name="Signout" value="Sign Out"></a>
			</div>
		</div>
	<div class="heading fix">	
		<label>Delete Account</label>
	</div>
	<div class="sharecircle" onclick="share()">
			<i class="fa fa-share-alt" aria-hidden="true"></i>
		</div>
		<div class="sharecircle facebook" id="f">
			<i class="fa fa-facebook" aria-hidden="true"></i>
		</div>
		<div class="sharecircle instagram" id="i">
			<i class="fa fa-instagram" aria-hidden="true"></i>
		</div>
		<div class="sharecircle youtube" id="y">
			<i class="fa fa-youtube-play" aria-hidden="true"></i>
		</div>
		<div class="sharecircle gmail" id="g">
			<i class="fa fa-envelope" aria-hidden="true"></i>
		</div>
		<div class="outerbox">
			<div class="image">
				<i class="fa fa-frown-o" aria-hidden="true"></i>
			</div>
			<div class="content">
				<h2>Are you sure you want to delete this account ?</h2><br>
			</div>
			<div class="button">
				<span class="btn2">
					<form action="/B24U/DeleteEvent" method="post">
						<input type="submit" name="submit" value="Yes">
						<input type="submit" name="submit" value="No">
					</form>
				</span>
			</div>
		</div>
	<%@include file="../footer.jsp"%>
</body>
<script>
		function openNav()
		{
  			document.getElementById("mySidenav").style.display = "block";
		}
		function closeNav()
		{
  			document.getElementById("mySidenav").style.display = "none";
		}
		function share()
	{
		var a =document.getElementById("f");
		var b=document.getElementById("g");
		var c=document.getElementById("i");
		var d=document.getElementById("y");
		if (a.style.display === "none")
		{
			a.style.display="block";
			b.style.display="block";
			c.style.display="block";
			d.style.display="block";
		}
		else
		{
			a.style.display="none";
			b.style.display="none";
			c.style.display="none";
			d.style.display="none";
		}
	}
	</script>
</html>