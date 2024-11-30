<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="./css/style_admin.css">
	<link href="css/tailwind.css" rel="stylesheet" type="text/css" />

	<title>MyProGuide.com</title>
</head>
<body>
	<c:forEach var="cus" items="${guideDetails}">	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>  
	</c:forEach>

	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#dash" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">MyProGuide.com</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="#dash">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="#mystore">
					<i class='bx bxs-shopping-bag-alt' ></i>
					<span class="text">My Store</span>
				</a>
			</li>
			<li>
				<a href="#alys">
					<i class='bx bxs-doughnut-chart' ></i>
					<span class="text">Analytics</span>
				</a>
			</li>
			<li>
				<a href="#msg">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Message</span>
				</a>
			</li>
			<li>
				<a href="#team">
					<i class='bx bxs-group' ></i>
					<span class="text">Team</span>
				</a>
			</li>
		</ul>
		<ul class="side-menu">
			<li>
				<a href="#">
					<i class='bx bxs-cog' ></i>
					<span class="text">Settings</span>
				</a>
			</li>
			<li>
				<a href="#" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Categories</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">8</span>
			</a>
			
			<c:url value="profile.jsp" var="proguide">   
			 	<c:param name="id" value="${id}"/>
				<c:param name="name" value="${name}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="phone" value="${phone}"/>
				<c:param name="user" value="${username}"/>
				<c:param name="pwd" value="${password}"/>  
			 </c:url> 
			
			
			<a href="${proguide}" class="profile">
				<img src="img/user.png">
			</a>
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
		
			<div class="head-title">
				<div class="left">
					<h1 id="dash">Dashboard</h1>
					<ul class="breadcrumb">
						<li>
							<a href="dash">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Home</a>
						</li>
					</ul>
				</div>
				
				
				<a href="#" class="btn-download">
					<i class='bx bxs-cloud-download' ></i>
					<span class="text">Download PDF</span>
				</a>
			</div>
			  <!-- ======================= Cards ================== -->
			  <div class="cardBox">
                <div class="card">
                    <div>
                        <div class="numbers">1,504</div>
                        <div class="cardName">Daily Views</div>
                    </div>

                    <div class="iconBx">
                        <ion-icon name="eye-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">80</div>
                        <div class="cardName">Sales</div>
                    </div>

                    <div class="iconBx">
                        <ion-icon name="cart-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">284</div>
                        <div class="cardName">Comments</div>
                    </div>

                    <div class="iconBx">
                        <ion-icon name="chatbubbles-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">$7,842</div>
                        <div class="cardName">Earning</div>
                    </div>

                    <div class="iconBx">
                        <ion-icon name="cash-outline"></ion-icon>
                    </div>
                </div>
            </div>
			 
				<div class="head-title">
				<div class="left">
					<a href="mystore" id="mystore"><h1>MY STORE</h1></a>
					<ul class="breadcrumb">
						<li>
							<a href="">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="">My Store</a>
						</li>
					</ul>
				</div>
				
				
				<div class="table-data" id="MyStore">
								<div class="order">
									<div class="head">
										<h3> GUide</h3>
										<a href="insertguide.jsp" class="btn">Insert Guide</a>
									</div>
									
				<form method="post" action="all">
					<div class="head">
					<button id="submit" type="submit" class="btn">All Guide</button>			
					<i class='bx bx-filter' ></i>
					</div>
				    <table>
						<thead>
							<tr>
								<th>	</th>
								<th>ID</th>
                                <th>FULL NAME</th>
                                <th>EMAIL</th>
                                <th>Phone</th>
                                <th>USERNAME</th>
								<th>PASSWORD</th>
								<th>Status</th>
                                <th>Status</th>
							</tr>
						</thead>
						<tbody>
							
						<tr>
								<td>
								 <img src="img/user.png">
								 <p>${li.id}</p>
								</td>
				                <td>1</td>
				                <td>Kevin Bandara</td>				                
				                <td>kevi99@gmail.com</td>
				                <td>0785645189</td>				                
				                <td>kevin999</td>
				                <td>kevi#8990</td>
				                <td><a href=""><span class="status pending">Edit</span></a></td>
				                <td><a href=""><span class="status completed">Delete</span></a></td>
						
						</tr>
						
				        <c:forEach items="${listUser}" var="guide">
				        <c:set var="id" value="${guide.id}"/>
						<c:set var="name" value="${guide.name}"/>
						<c:set var="email" value="${guide.email}"/>
						<c:set var="phone" value="${guide.phone}"/>
						<c:set var="username" value="${guide.userName}"/>
						<c:set var="password" value="${guide.password}"/>  
				            <tr>
				            
				            	<td>
									<img src="img/people.png">
									<p>${li.id}</p>
								</td>
				                <td>${id}</td>
				                <td>${name}</td>
				                <td>${email}</td>
				                <td>${phone}</td>
				                <td>${username}</td>
				                <td>${password}</td>
				                
				                
				                
				                <c:url value="updateguide.jsp" var="upguide">   
								 	<c:param name="id" value="${id}"/>
									<c:param name="name" value="${name}"/>
									<c:param name="email" value="${email}"/>
									<c:param name="phone" value="${phone}"/>
									<c:param name="user" value="${username}"/>
									<c:param name="pwd" value="${password}"/>  
								 </c:url> 
				                <td><a href="${upguide}"><span class="status pending">Edit</span></a></td>
				                
				                
				                
				                
				                <c:url value="deleteguide.jsp" var="delguide">   
								 	<c:param name="id" value="${id}"/>
									<c:param name="name" value="${name}"/>
									<c:param name="email" value="${email}"/>
									<c:param name="phone" value="${phone}"/>
									<c:param name="user" value="${username}"/>
									<c:param name="pwd" value="${password}"/>  
								 </c:url> 
                               	<td><a href="${delguide}"><span class="status completed">Delete</span></a></td>
				            </tr>
				        </c:forEach>
				    </tbody>    
				    </table>
				 </form>
				 </div>
				 </div>
				 
				 <div class="table-data" id="MyStore">
								<div class="order">
									<div class="head">
										<h3> Traveler</h3>
										<a href="inserttravel.jsp" class="btn">Insert Traveler</a>
									</div>
									
				<form method="post" action="all2">
					<div class="head">
					<button id="submit" type="submit" class="btn">All Traveler</button>			
					<i class='bx bx-filter' ></i>
					</div>
				    <table>
						<thead>
							<tr>
								<th>	</th>
								<th>ID</th>
		                        <th>Name</th>
		                        <th>NIC</th>
		                        <th>Email</th>
		                        <th>Phone</th>
		                        <th>Country</th>
		                        <th>Username</th>
		                        <th>Password</th>
								<th>Status</th>
                                <th>Status</th>
							</tr>
						</thead>
						<tbody>
						
						<tr>
							<td>
									<img src="img/user.png">
									<p>${li.id}</p>
								</td>
				                <td>1</td>
				                <td>Kevin Bandara</td>
				                <td>9936541410V</td>
				                <td>kevi99@gmail.com</td>
				                <td>0785645189</td>
				                <td>US</td>
				                <td>kevin999</td>
				                <td>kevi#8990</td>
								<td><a href=""><span class="status pending">Edit</span></a></td>
				                <td><a href=""><span class="status completed">Delete</span></a></td>
						
						
						
						</tr>
						
						
						
						
						
						
						
				        <c:forEach items="${listtra}" var="tr">
				        <c:set var="id" value="${tr.id}"/>
						<c:set var="name" value="${tr.name}"/>
						<c:set var="nic" value="${tr.nic}"/>
						<c:set var="email" value="${tr.email}"/>
						<c:set var="phone" value="${tr.phone}"/>
						<c:set var="country" value="${tr.country}"/>
						<c:set var="username" value="${tr.username}"/>
						<c:set var="password" value="${tr.password}"/>  
				            <tr>
				            
				            	
				            
				            
				            	<td>
									<img src="img/user.png">
									<p>${li.id}</p>
								</td>
				                <td>${id}</td>
				                <td>${name}</td>
				                <td>${nic}</td>
				                <td>${email}</td>
				                <td>${phone}</td>
				                <td>${country}</td>
				                <td>${username}</td>
				                <td>${password}</td>
				                
				                
				                 <c:url value="updateTraveler.jsp" var="uptravel">   
								 	<c:param name="id" value="${id}"/>
									<c:param name="name" value="${name}"/>
									<c:param name="nic" value="${nic}"/>
									<c:param name="email" value="${email}"/>
									<c:param name="phone" value="${phone}"/>
									<c:param name="country" value="${country}"/>
									<c:param name="user" value="${username}"/>
									<c:param name="pwd" value="${password}"/>  
								 </c:url> 
				                <td><a href="${uptravel}"><span class="status pending">Edit</span></a></td>
				                
				                
				                
				                
				                <c:url value="deleteTraveler.jsp" var="deltravel">   
								 	<c:param name="id" value="${id}"/>
									<c:param name="name" value="${name}"/>
									<c:param name="nic" value="${nic}"/>
									<c:param name="email" value="${email}"/>
									<c:param name="phone" value="${phone}"/>
									<c:param name="country" value="${country}"/>
									<c:param name="user" value="${username}"/>
									<c:param name="pwd" value="${password}"/>  
								 </c:url> 
                               	<td><a href="${deltravel}"><span class="status completed">Delete</span></a></td>
				                
				                
				              
				            </tr>
				        </c:forEach>
				    </tbody>    
				    </table>
				 </form>
				 </div>
				 </div>
				 <div class="head-title">
				<div class="left">
					<a href="" id="alys"><h1>ANALYTICS</h1></a>
					<ul class="breadcrumb">
						<li>
							<a href="">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="">Analytics</a>
						</li>
					</ul>
				</div>	 
				 
			
			</div>
					 <div class="head-title">
				<div class="left">
					<a href="" id="msg"><h1>MESSAGE</h1></a>
					<ul class="breadcrumb">
						<li>
							<a href="">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="">Message</a>
						</li>
					</ul>
				</div>	 
				 
			
			</div>
					


				 
				 <div class="head-title">
				<div class="left">
					<a href="" id="team"><h1>TEAM</h1></a>
					<ul class="breadcrumb">
						<li>
							<a href="">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="">Team</a>
						</li>
					</ul>
				</div>	 
				 
			
			</div>
			
			
			
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="./js/script.js"></script>
</body>
</html>