package com.yomul.yomul;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yomul.api.APIKey;
import com.yomul.api.kakao.KakaoLoginAPI;

@Controller
public class LoginController {

	/**
	 * 카카오 로그인 페이지
	 * 
	 * @return
	 */
	@RequestMapping(value = "kakao_login", method = RequestMethod.GET)
	public String kakao_login() {
		return "redirect:https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=" + APIKey.KAKAO_API_REST_KEY + "&redirect_uri="
				+ APIKey.KAKAO_REDIRECT_URI;
	}

	/**
	 * 카카오 로그인 후 토큰 생성
	 * 
	 * @param code
	 * @param error
	 * @param error_description
	 * @return
	 */
	@RequestMapping(value = "kakao_login_proc", method = RequestMethod.GET)
	public ModelAndView kakao_login_proc_(String code, String error, String error_description) {
//		System.out.println("카카오 로그인 코드: " + code);
		ModelAndView mv = new ModelAndView("redirect:/");
		KakaoLoginAPI kakao = new KakaoLoginAPI();
		// 로그인 토큰으로 세션 처리 해야함
		String access_token = kakao.getAccessToken(code);
//		System.out.println("카카오 로그인 토큰: " + access_token);
		return mv;
	}

	/**
	 * 패스워드 초기화 페이지
	 * 
	 * @return
	 */
	@RequestMapping(value = "reset_password", method = RequestMethod.GET)
	public ModelAndView reset_password() {
		ModelAndView mv = new ModelAndView("user/login/reset_password");
		return mv;
	}

	/**
	 * 패스워드 초기화 처리
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "reset_password_proc", method = RequestMethod.GET)
	public String reset_password_proc() {
		return "0";
	}

	/**
	 * 로그인 페이지
	 * 
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "user/login/login";
	}
}
