<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<div class="flakes-content">
	<div class="view-wrap">
	<c:choose>
		<c:when test="${mode == 'MODE_HOME'}">
			<%@ include file="hello.jsp" %>
		</c:when>

		<c:when test="${mode == 'MODE_ACCOUNT'}">
			<div class="container text-center" >
				<h3>My Accounts</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
							   <th>FullName</th>
								<th>Address</th>
								<th>NumberPhone</th>
								<th>Roles</th>
								<th></th>
								<th></th>
							</tr>
						</thead>	
						<tbody>
							<c:forEach var="account" items="${A}">
							<tr>
								<td>${account.ID}</td>
								<td>${account.user_name}</td>
								<td>${account.full_name}</td>
								<td>${account.address}</td>
								<td>${account.number_phone}</td>								
								<td><a href="update-account?id=${account.ID}"><span class="glyphicon glyphicon-pencil"></span></a></td>
								<td><a href="delete-account?id=${account.ID}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<h4><a href="new-account">Add Account </a></h4>
			</div>
			</c:when>
			<c:when test="${mode == 'MODE_NEWACCOUNT'}">
			<div class="container text-center">
				<h3>Manage Account</h3>
				<h4>New Account</h4>
				<hr>
				<form class="form-horizontal" method="POST" action="save-account">
					<div class="form-group">
						<label class="control-label col-md-3">UserName</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="user_name" />
						</div>	
						<label class="control-label col-md-3">PassWord</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="Pass" />
						</div>
						<label class="control-label col-md-3">Full Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="full_name" />
						</div>
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="Address"/>
						</div>
						<label class="control-label col-md-3">Number Phone</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="number_phone"/>
						</div>
						<label class="control-label col-md-3">Roles</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="roles" value="2"/>
						</div>
					</div>
						<br>				
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
				
			</div>
		</c:when>	
		<c:when test="${mode == 'MODE_UPDATEACCOUNT'}">
			<div class="container text-center">
				<h3>Manage Account</h3>
				<h4>Update Account</h4>
				<hr>
				<form class="form-horizontal" method="POST" action="save-account">
				<input type="hidden" name="ID" value="${acc.ID}"/>
					<div class="form-group">
						<label class="control-label col-md-3">UserName</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="user_name" value="${acc.user_name}" />
						</div>	
						<label class="control-label col-md-3">PassWord</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="Pass" />
						</div>
						<label class="control-label col-md-3">Full Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="full_name" value="${acc.full_name}"/>
						</div>
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="Address" value="${acc.address}"/>
						</div>
						<label class="control-label col-md-3">Number Phone</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="number_phone" value="${acc.number_phone}"/>
						</div>
						<label class="control-label col-md-3">Roles</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="roles" value="2"/>
						</div>
						<br>			
							
						<div class="col-md-7">
							<input type="submit" class="btn btn-primary" value="Save"/>
						</div>
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_ROLE'}">
			<div class="container text-center" >
				<h3>My Roles</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr class="alignCenter">
								<th >ID </th>
								<th>NameRole</th>								
								<th></th>
								<th></th>
							</tr>
						</thead>
					<tbody>
							<c:forEach var="ro" items="${R}">
							<tr>
								<td>${ro.id}</td>
								<td>${ro.namerole}</td>
								<td><a href="update-role?id=${ro.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
								<td><a href="delete-role?id=${ro.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<h4><a href="new-role">New Roles</a></h4>
			</div>
		</c:when>
		
		<c:when test="${mode == 'MODE_NEWROLE'}">
			<div class="container text-center">
				<h3>Manage Roles</h3>
				<h4>New Role</h4>
				<hr>
				<form class="form-horizontal" method="POST" action="save-role">
					<div class="form-group">
						<label class="control-label col-md-3">NameRole</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="namerole"/>
						</div>	
					</div>				
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
		</c:when>	
			<c:when test="${ mode == 'MODE_UPDATEROLE'}">
			<div class="container text-center">
				<h3>Manage Roles</h3>
				<h4>Update Role</h4>
				<hr>
				
				<form class="form-horizontal" method="POST" action="save-role">
				<input type="hidden" name="id" value="${R.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">NameRole</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="namerole"/>
						</div>			
					</div>		
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
		</c:when>		
		
		<c:when test="${mode == 'MODE_CATEGORY'}">
			<div class="container text-center" >
				<h3>My Categories</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-bordered">
						<thead class="thead-light">
							<tr>
								<th scope="col">Id</th>
								<th scope="col">Category name</th>								
								<th scope="col"></th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="ca" items="${CA}">
							<tr>
								<td>${ca.id}</td>
								<td>${ca.name_cate}</td>
								<td><a href="update-category?id=${ca.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
								<td><a href="delete-category?id=${ca.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<h4><a href="new-category">New Category</a></h4>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_NEWCATEGORY'}">
			<div class="container text-center">
				<h3>Manage Categories</h3>
				<h4>New Category</h4>
				<hr>
				<form class="form-horizontal" method="POST" action="save-category">
					<div class="form-group">
						<input type="hidden" class="form-control" name="id" value="0"/>
						<label class="control-label col-md-3">Name Category</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name_cate"/>
						</div>		
					</div>			
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
		</c:when>	
			
			<c:when test="${ mode == 'MODE_UPDATECATEGORY'}">
			<div class="container text-center">
				<h3>Manage Categories</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-category">
				<input type="hidden" name="id" value="${categoryupdate.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Edit name category</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name_cate" value="${categoryupdate.name_cate}"/>
						</div>			
					</div>		
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
		</c:when>		
		
		<c:when test="${mode == 'MODE_COMMENT'}">
			<div class="container text-center" >
				<h3>My Comments</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserID</th>
								<th>UserPosts</th>
							   <th>Comment</th>
								<th>DateCreated</th>
								<th></th>
							</tr>
						</thead>	
						<tbody>
							<c:forEach var="cmt" items="${CMT}">
							<tr>
								<td>${cmt.id}</td>
								<td>${cmt.user_id}</td>
								<td>${cmt.posts_id}</td>
								<td>${cmt.comment}</td>
								<td>${cmt.datecreated}</td>
								<td><a href="delete-comment?id=${cmt.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			</c:when>
		<c:when test="${mode == 'MODE_POST'}">
			<div class="container text-center" >
				<h3>My Posts</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>ID</th>
								<th>Title</th>
								<th>Summary</th>
							   <th>Content</th>
								<th>Picture</th>
								<th>View</th>
								<th>UserID</th>
								<th>CategoryID</th>
								<th></th>
								<th></th>
							</tr>
						</thead>	
						<tbody>
							<c:forEach var="p" items="${P}">
							<tr>
								<td>${p.id}</td>
								<td>${p.title}</td>
								<td>${p.summary}</td>
								<td>${p.content}</td>
								<td>${p.picture}</td>
								<td>${p.view}</td>
								<td>${p.user_id}</td>
								<td>${p.category_id}</td>								
								<td><a href="update-post?id=${p.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
								<td><a href="delete-post?id=${p.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<h4><a href="new-post">New Post</a></h4>
			</div>
			</c:when>
		<c:when test="${mode == 'MODE_NEWPOST'}">
			<div class="container text-center">
				<h3>Manage Account</h3>
				<h4>New Post</h4>
				<hr>
				<form class="form-horizontal" method="POST" action="save-post">
					<div class="form-group">
						<label class="control-label col-md-3">Title</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="title" />
						</div>	
						<label class="control-label col-md-3">Summary</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="summary" />
						</div>
						<label class="control-label col-md-3">Content</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="content" />
						</div>
						<label class="control-label col-md-3">Picture</label>
						<div class="col-md-7">
								<button type="button" class="btn btn-success" name="btn-file" id="btn-file">Open file</button>
								<input type="file" style="display:none" id="image-post" name="picture" accept="image/png, image/jpeg" name="picture"/>	
								<img src="" class="img-thumbnail" alt="Cinque Terre" id="img-post">					
						</div>
						<label class="control-label col-md-3">View</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="view" value="0"/>
						</div>
						<label class="control-label col-md-3">UserID Post</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="user_id" value="2"/>
						</div>
						<label class="control-label col-md-3">Category ID</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="catelogy_id" value="2"/>
						</div>
						
						<br>	
						</div>			
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
				
			</div>
		</c:when>
		<c:when test="${ mode == 'MODE_UPDATEPOST'}">
			<div class="container text-center">
				<h3>Manage Roles</h3>
				<h4>Update Role</h4>
				<hr>
				
				<form class="form-horizontal" method="POST" action="save-post">
				<input type="hidden" name="id" value="${postupdate.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Title</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="title" value="${postupdate.title}" />
						</div>	
						<label class="control-label col-md-3">Summary</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="summary" value="${postupdate.summary}"/>
						</div>
						<label class="control-label col-md-3">Content</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="content" value="${postupdate.content}"/>
						</div>
						<label class="control-label col-md-3">Picture</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="picture" value="${postupdate.picture}"/>
						</div>
						<label class="control-label col-md-3">View</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="view" value="${postupdate.view}"/>
						</div>
						<label class="control-label col-md-3">UserID Post</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="user_id" value="${postupdate.user_id}"/>
						</div>
						<label class="control-label col-md-3">Category ID</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="catelogy_id" value="${postupdate.category_id}"/>
						</div>
						
						<br>	
						</div>			
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
		</c:when>	
			
	</c:choose>
	</div>
	</div>
</html>