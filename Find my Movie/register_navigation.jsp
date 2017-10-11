<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



	<div id="loginModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Login </h4>
					</div>
					<div class="modal-body">

						<form action="loginController.jsp" method="post" class="form-horizontal">
							<input type="hidden" name="from" value="${pageContext.request.requestURI}">
							<div class="form-group">
								<label for="username" class="col-sm-2 control-label">Username</label>
								<div class="col-sm-6">
									<input type="text" name="username" id="username" class="form-control" placeholder="Username" required>
								</div>							
							</div>
							<div class="form-group">
								<label for="password" class="col-sm-2 control-label">Password</label>
								<div class="col-sm-6">
									<input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
								</div>								
							</div>
						
							<div class="form-group">
								<div class="col-sm-6 col-sm-offset-2">
									<button class="btn btn-success" type="submit">Sign in</button>
									<input type="hidden" name="from" value="${param.from}">
									<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
								</div>
							</div>
							
						</form>
					</div> <!-- /.modal-body -->
				</div> <!-- /.modal-content -->
			</div>  <!-- /.modal-dialog -->
		</div> <!-- /#loginModal -->
		<!-- End login modal -->
		
	<div id="registerModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Register </h4>
					</div>
					<div class="modal-body">

						<form action="registerController.jsp" method="post" class="form-horizontal">
						<div class="form-group">
								<label for="name" class="col-sm-2 control-label">First Name</label>
								<div class="col-sm-6">
									<input type="text" name="name" id="name" class="form-control" placeholder="First Name" required>
								</div>								
							</div>
							<div class="form-group">
								<label for="surname" class="col-sm-2 control-label">Last Name</label>
								<div class="col-sm-6">
									<input type="text" name="surname" id="surname" class="form-control" placeholder="Last Name" required>
								</div>								
							</div>
							
							<div class="form-group">
								<label for="email" class="col-sm-2 control-label">Email</label>
								<div class="col-sm-6">
									<input type="text" name="email" id="email" class="form-control" placeholder="Email" required>
								</div>								
							</div>
							
							<div class="form-group">
								<label for="username" class="col-sm-2 control-label">Username</label>
								<div class="col-sm-6">
									<input type="text" name="username" id="username" class="form-control" placeholder="Username" required>
								</div>							
							</div>
							
							<div class="form-group">
								<label for="password" class="col-sm-2 control-label">Create Password</label>
								<div class="col-sm-6">
									<input type="password" name="password" id="password" class="form-control" placeholder="Create Password" required>
								</div>								
							</div>
							

							
							<div class="form-group">
								<div class="col-sm-6 col-sm-offset-2">
									<button class="btn btn-success" type="submit" onClick="swal()">Sign up</button>
									<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
								</div>
							</div>
							
						</form>
					</div> <!-- /.modal-body -->
				</div> <!-- /.modal-content -->
			</div>  <!-- /.modal-dialog -->
		</div> <!-- /#loginModal -->
		<!-- End login modal -->
		
		
				<div class="clearfix"></div>
		
