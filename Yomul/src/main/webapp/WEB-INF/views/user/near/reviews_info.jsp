<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기</title>
<!-- HEAD -->
<jsp:include page="../../head.jsp"></jsp:include>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!--  BODY  -->
	<div id="near_info" class="near-info-content">
		<div class="near-info-left">
			<!--  작성자 정보  -->
			<div class="reviews-info-writer">
				<div class="">
					<img src="http://localhost:9000/yomul/image/이미지준비중.jpg">
					<label>단골 닉네임</label>
				</div>
			</div>
			
			<!--  내용  -->
			<div class="near-info-left-content">
				<p>
					요거 물건이네 이용해 봤는데 친절하고 너무 좋아요.<br>
					사장님이 젊으셔서 그런지 인테리어도 예쁘더라구요 *^^*<br>
					후기입니다후기입니다후기입니다후기입니다후기입니다<br>
					후기입니다후기입니다후기입니다후기입니다후기입니다후기입니다후기입니다후기입니다<br>
					후기입니다후기입니다후기입니다<br>
					후기입니다후기입니다후기입니다후기입니다후기입니다후기입니다후기입니다후기입니다후기입니다<br>
				</p>
				<div>
					<label>2021년 07월 05일 23:22</label>
					<label class="near-info-point">·</label>
					<label>조회 5</label>
					<label class="near-info-point">·</label>
					<button type="button" class="near-info-report">신고</button>
				</div>
			</div>
			<div class="near-info-line"></div>
			
			<!--  댓글  -->
			<div class="near-info-chat">
				<div class="near-info-chat-title">
					<h3>댓글</h3><h3>1</h3>
				</div>
				<div class="near-info-chat-writer">
					<img src="http://localhost:9000/yomul/image/이미지준비중.jpg">
					<div>
						<input type="text" placeholder="댓글을 남겨 보세요.">
						<div class="near-info-chat-button">
							<button class="comment-feed__form__photo" type="button" onclick="document.getElementById('file').click();">
								<svg width="24" height="20" viewBox="0 0 24 20" preserveAspectRatio="xMidYMid meet">
									<path fill="#292929" fill-rule="nonzero" d="M3.22 20C1.446 20 0 18.547 0 16.765V6.176c0-1.782 1.446-3.235 3.22-3.235h3.118L7.363.377A.586.586 0 0 1 7.903 0h8.195c.24.003.453.152.54.377l1.024 2.564h3.118c1.774 0 3.22 1.453 3.22 3.235v10.589C24 18.547 22.554 20 20.78 20H3.22zm0-1.176h17.56a2.037 2.037 0 0 0 2.05-2.06V6.177c0-1.15-.904-2.058-2.05-2.058h-3.512a.585.585 0 0 1-.54-.368l-1.024-2.574H8.296L7.27 3.75a.585.585 0 0 1-.54.368H3.22a2.037 2.037 0 0 0-2.05 2.058v10.589c0 1.15.904 2.059 2.05 2.059zM12 17.059c-3.064 0-5.561-2.51-5.561-5.588 0-3.08 2.497-5.589 5.561-5.589s5.561 2.51 5.561 5.589c0 3.079-2.497 5.588-5.561 5.588zm0-1.177a4.392 4.392 0 0 0 4.39-4.411A4.392 4.392 0 0 0 12 7.059a4.392 4.392 0 0 0-4.39 4.412A4.392 4.392 0 0 0 12 15.882z"></path>
								</svg>
							</button>
							<input type="file" id="file" style="display:none" >
							<button class="comment-feed__form__submit" type="submit" disabled="">등록</button>
						</div>
					</div>
				</div>
				<div class="near-info-chat-content">
				<% for(int i=0;i<2;i++){ %>
					<div>
						<img src="http://localhost:9000/yomul/image/이미지준비중.jpg">
						<div>
							<div>
								<label>댓글 작성자</label>
								<span>댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다
								댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다댓글입니다</span>
							</div>
							<div>
								<label>1시간 전</label>
								<label class="near-info-point">·</label>
								<button type="button" class="near-info-chat-like">좋아요 65</button>
								<label class="near-info-point">·</label>
								<button type="button" class="near-info-chat-report">신고</button>
							</div>
						</div>
					</div>
				<% } %>
				</div>
			</div>
			
			<!-- 페이징  -->
			<div class="near-info-page">
				<p>1 2 3 4</p>
			</div>
		</div>
		
	</div>

	<!-- FOOTER -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>