package com.cos.blog.controller;

import com.cos.blog.service.UserService;
import com.cos.blog.service.paymentService;
import com.cos.blog.service.paymentService2;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.cos.blog.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@Autowired
	private com.cos.blog.service.messageService messageService;
	
	// 컨트롤로에서 세션을 어떻게 찾는지?
	// @AuthenticationPrincipal PrincipalDetail principal
	@GetMapping({"", "/"})
	public String index(Model model, @PageableDefault(size=11, sort="id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("boards", boardService.글목록(pageable));
		return "index"; // viewResolver 작동!!
	}
	
	@GetMapping("/board/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("board", boardService.글상세보기(id));
		
		return "board/detail";
	}

	@GetMapping("/board/messageForm/{id}")
	public String findById2(@PathVariable int id, Model model) {
		//model.addAttribute("board", messageService.글상세보기(id));

		return "board/message";
	}

	
	@GetMapping("/board/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("board", boardService.글상세보기(id));
		return "board/updateForm";
	}
	
	// USER 권한이 필요
	@GetMapping("/board/saveForm")
	public String saveForm() {
		return "board/saveForm";
	}

	@GetMapping("/board/location")
	public String location() { return "board/location";}

	@GetMapping("/board/messageMain")
	public String messageMain() { return "board/messageMain";}

	@GetMapping("/board/messageForm")
	public String messageForm() { return "board/messageForm";}

	@GetMapping("/board/messageForm2")
	public String messageForm2() { return "board/messageForm2";}

	@GetMapping("/board/sms")
	public String sms() { return "board/sms";}

//	@GetMapping("/board/smssend")
//	public String smssend() { return "board/smssend";}

//	@GetMapping("/board/calljson")
//	public String calljson() { return "board/calljson";}

	@RequestMapping(value="/messageSave", method=RequestMethod.POST)
	public String messageSave() { return "board/messageSave";}

	@RequestMapping(value="/board/smssend", method=RequestMethod.POST)
	public String smssend() { return "board/smssend";}

	@RequestMapping(value="/board/calljson", method=RequestMethod.POST)
	public String calljson() { return "board/calljson";}

	@GetMapping("/board/testSms")
	public String testSms() { return "board/testSms";}

	@GetMapping("/board/testSms2")
	public String testSms2() { return "board/testSms2";}

	//문자 인증
	@PostMapping("/memberPhoneCheck")
	public @ResponseBody String memberPhoneCheck(@RequestParam(value="to") String to) throws CoolsmsException {

		return paymentService.PhoneNumberCheck(to);
	}
	@PostMapping("/memberPhoneCheck2")
	public @ResponseBody String memberPhoneCheck2(@RequestParam(value="to") String to, @RequestParam(value="text") String text) throws CoolsmsException {

		return paymentService2.PhoneNumberCheck2(to, text);
	}

}
