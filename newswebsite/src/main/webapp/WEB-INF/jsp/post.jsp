<html>

<body id="top">
  <!-- ####################################################################################################### -->
  <div class="wrapper">
    <div id="breadcrumb">
      <ul>
        <li class="first">You Are Here</li>
        <li>&#187;</li>
        <li><a href="#">Home</a></li>
        <li>&#187;</li>
        <li><a href="#">Grand Parent</a></li>
        <li>&#187;</li>
        <li><a href="#">Parent</a></li>
        <li>&#187;</li>
        <li class="current"><a href="#">Child</a></li>
      </ul>
    </div>
  </div>
  <!-- ####################################################################################################### -->
  <div class="wrapper">
    <div class="container">
      <h1><strong>${post.title}</strong></h1>
      <h2><b>${post.summary}</b></h2>
      <img src="static/post-img/${post.picture}" alt="" />
      <h3>${post.content}</h3>
      <br class="clear" />
    </div>
  </div>
  <!-- ####################################################################################################### -->
  <div class="wrapper">
    <div id="adblock">
      <div class="fl_left"><a href="#"><img src="../images/demo/468x60.gif" alt="" /></a></div>
      <div class="fl_right"><a href="#"><img src="../images/demo/468x60.gif" alt="" /></a></div>
      <br class="clear" />
    </div>
  </div>
  <!-- ####################################################################################################### -->
  <div class="wrapper">
 	 <div class="container">
    <div class="content">
      <div id="comments">
        <h2>Comments</h2>
        <ul class="commentlist">
          <li class="comment_odd">
            <div class="author"><img class="avatar" src="../images/demo/avatar.gif" width="32" height="32" alt="" /><span class="name"><a href="#">A Name</a></span> <span class="wrote">wrote:</span></div>
            <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
            <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
          </li>
          <li class="comment_even">
            <div class="author"><img class="avatar" src="../images/demo/avatar.gif" width="32" height="32" alt="" /><span class="name"><a href="#">A Name</a></span> <span class="wrote">wrote:</span></div>
            <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
            <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
          </li>
          <li class="comment_odd">
            <div class="author"><img class="avatar" src="../images/demo/avatar.gif" width="32" height="32" alt="" /><span class="name"><a href="#">A Name</a></span> <span class="wrote">wrote:</span></div>
            <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
            <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
          </li>
        </ul>
      </div>
      <h2>Write A Comment</h2>
      <div id="respond">
        <form action="#" method="post">
          <p>
            <input type="text" name="name" id="name" value="" size="22" />
            <label for="name"><small>Name (required)</small></label>
          </p>
          <p>
            <input type="text" name="email" id="email" value="" size="22" />
            <label for="email"><small>Mail (required)</small></label>
          </p>
          <p>
            <textarea name="comment" id="comment" cols="100%" rows="10"></textarea>
            <label for="comment" style="display:none;"><small>Comment (required)</small></label>
          </p>
          <p>
            <input name="submit" type="submit" id="submit" value="Submit Form" />
            &nbsp;
            <input name="reset" type="reset" id="reset" tabindex="5" value="Reset Form" />
          </p>
        </form>
      </div>
    </div>
    <br class="clear" />
  </div>
	</div>
</body>

</html>