<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="BusanCommunityPack.HelpBean"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="sMgr" class="BusanCommunityPack.SystemMgr"/>

<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>잘놀다갑니다</title>
 <link rel="stylesheet" href="./css/setting.css" >
 <link rel="stylesheet" href="./css/modal_inquiry.css">
 <link rel="stylesheet" href="./css/modal_changeNum.css">
 <link rel="stylesheet" href="./css/modal_changePhone.css">
 <link rel="stylesheet" href="./css/modal_signOut.css">
</head>
<body>
  <!-- 헤더 -->
  <header>
    <div class="header">
      <a href="#" class="header-logo">
        <img src="./img/seagull.png">
        <div>잘놀다갑니다</div>
      </a>
      <ul class="header-menu">
        <li><a href="./busanIntroduce.jsp">부산소개</a></li>
        <li><a href="./community.jsp">커뮤니티</a></li>
        <li><a href="javascript:void(0)">소식</a></li>
        <li><a href="javascript:void(0)">포토</a></li>
      </ul>
      <div class="header-login">
        <a href="./login.jsp">로그인</a>
        <a href="./signUp.jsp">회원가입</a>
      </div>
    </div>
  </header>



  <!-- 메인 -->
  <main>
    <div class="main">
    <div class="leftSide">
      <div class="l-sidebar">
        <div class="l-menu">
          <a href="#">공지사항</a><i class="fa-solid fa-bullhorn"></i>
        </div>
        <div class="l-menu">
          <a href="./help.jsp">도움말</a><i class="fa-solid fa-circle-question"></i>
        </div>
        <div class="l-menu inquiry">
          <a href="">문의하기</a><i class="fa-solid fa-person-circle-question"></i>
        </div>
        <div class="l-menu">
          <a href="">설정</a><i class="fa-solid fa-gear"></i>
        </div>
      </div>
    </div>

    <div class="noti-container">
      <div class="noti-main">
        <div class="noti-title">설정</div>
      </div>
      <ul class="noti-ul">
        <li>
          <label  class="noti-list changeNum" for="">
            <div>비밀번호 변경</div>
            <i class="fa-solid fa-lock"></i>
          </label>
        </li>
        
        <li>
          <label  class="noti-list changePhone" for="">
            <div>휴대폰 번호 변경</div>
            <div>010-1111-1111</div>
            <i class="fa-solid fa-phone"></i>
            </label>
        </li>
        
        <li>
          <label class="noti-list easyLogin" for="">
            <div>간편 로그인 설정</div>
            <div>네이버</div>
            <i class="fa-solid fa-arrow-right-to-bracket"></i>
            </label>
        </li>
        
        <li>
          <label class="noti-list signOut" for="">
            <div>회원 탈퇴</div>
            <i class="fa-solid fa-arrow-right-from-bracket"></i>
          </label>
        </li>
        
      </ul>
    </div>
    </main>



  <!-- 문의모달 -->
  
  <div class="modal-background inactive">
    <div class="modal-container">
    <div>
      <form action="">
        <p class="modal-title">문의하기</p>
        <div class="modal-input">
          <input type="text" class="modal-email" placeholder="이메일을 입력하세요"></input>
        </div>
        <div class="modal-text">
          <textarea name="" id="" rows="5" maxlength="1000" placeholder="문의 내용을 입력하세요"></textarea>
        </div>
        <div class="modal-screen">
          <p>스크린샷</p>
          <div class="fileUploadSize">
            <label class="fileUpload" for="imgFile">
              <i class="fa-solid fa-folder-open"></i>
              <input type="file" accept="image/*" id="imgFile">
              <span style="margin-left: 10px;">파일 추가</span>
            </label>
          </div>
        </div>
        <div class="modal-bnt">
          <button class="modal-send-bnt" type="submit">보내기</button>
          <button class="modal-close">취소</button>
        </div>
      </form>
    </div>
  </div>
  </div>


<!-- 비밀번호 변경 모달 -->
<div class="modal-changeNum-background inactive">
  <div class="modal-changeNum-container">
  <div>
    <form action="">
      <p class="modal-changeNum-title">비밀번호 변경</p>
      <div class="modal-changeNum-input">
        <input type="password" class="" placeholder="변경 할 비밀번호"></input>
      </div>
      <div class="modal-changeNum-input">
        <input type="password" class="" placeholder="변경 할 비밀번호 확인"></input>
      </div>
      <div class="modal-changeNum-bnt">
        <button class="modal-changeNum-send-bnt" type="submit">보내기</button>
        <button class="modal-changeNum-close">취소</button>
      </div>
    </form>
  </div>
</div>
</div>

<!-- 휴대폰 번호 변경 모달 -->
<div class="modal-changePhone-background inactive">
  <div class="modal-changePhone-container">
  <div>
    <form action="">
      <p class="modal-changePhone-title">비밀번호 변경</p>
      <div class="modal-changePhone-origin">
        <p>기존 휴대폰 번호</p>
       <p>010-1111-1111</p>
      </div>
      <div class="modal-changePhone-input">
        <input type="text" class="" placeholder="변경 할 휴대폰 번호"></input>
      </div>
      <div class="modal-changePhone-bnt">
        <button class="modal-changePhone-send-bnt" type="submit">보내기</button>
        <button class="modal-changePhone-close">취소</button>
      </div>
    </form>
  </div>
</div>
</div>


<!-- 회원탈퇴 모달 -->
<div class="modal-signOut-background inactive">
  <div class="modal-signOut-container">
  <div>
    <form action="">
      <p class="modal-signOut-title">회원 탈퇴</p>
        <div class="modal-signOut-msg">
        <p>회원 탈퇴하면 모든 데이터가 삭제됩니다<br>계속 하시겠습니까?</p>
        </div>
      <div class="modal-signOut-input">
        <input type="password" class="" placeholder="비밀번호 입력"></input>
      </div>
      <div class="modal-signOut-bnt">
        <button class="modal-signOut-send-bnt" type="submit">보내기</button>
        <button class="modal-signOut-close">취소</button>
      </div>
    </form>
  </div>
</div>
</div>


<script src="./js/modal.js"></script>
<script src="https://kit.fontawesome.com/536e37fbfc.js" crossorigin="anonymous"></script>


</body>

</html>