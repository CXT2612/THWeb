<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="header" style="display: flex; justify-content: space-between; background-color: rgb(230, 227, 227);">
      <span style="margin-top: 20px;">CMS</span>
      <div>
        <a>
          <div style="display: flex;"  id="btnOption"  name="btnOption">
            <button class="option" style="border: none; width: 75px; height: 75px;" id="btnOption" onclick="showOption()">
              <img width="25px;" height="25px;" src="user.png"/>
              <img width="25px;" height="25px;" src="sort-down.png"/>
            </button>
          </div>
        </a>
        <div id="boxOption" name="boxOption" class="boxOption" style="width: 150px; border: solid 1px rgb(177, 173, 173); position: absolute; right: 0px; visibility: hidden;">
          <button style="width: 100%; height: 30px;">
            User Profile
          </button>
          <br/>
          <button style="width: 100%; height: 30px;">
            Log out
          </button>
        </div>
      </div>
  </div>
  <script>
  function showOption() {
    document.querySelector("#boxOption").classList.toggle("show-box");
  }
</script>
</body>
</html>