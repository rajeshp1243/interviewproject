package com.cts.controller;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import com.cts.dao.InterviewRepository;
import com.cts.model.InterviewDetails;
import com.cts.service.InterviewService;

@Controller
@RequestMapping("interview")
@CrossOrigin
public class InterviewController {

	@Autowired
	private InterviewService ols;

	@Autowired
	private InterviewRepository ir;

	@Autowired
	RestTemplate restTemplate;

	@RequestMapping(value = "/indexpage", method = RequestMethod.GET)
	public String indexPage(Model model) {
		model.addAttribute("command", new InterviewDetails());
		return "index";
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcomePage(Model model) {
		model.addAttribute("command", new InterviewDetails());
		return "welcome";
	}

	@RequestMapping("/search")
	//search works like ::keyword is match with question then it will give result.
	public String viewHomePage(Model model, @RequestParam String keyword) {
		if (keyword != null) {
			keyword = keyword.substring(0, 1).toUpperCase() + keyword.substring(1).toLowerCase();
			List<InterviewDetails> list = ols.listAll(keyword);
			model.addAttribute("list", list);
			model.addAttribute("keyword", keyword);
			return "viewAllInterviewDetails";
		}
		return "viewAllInterviewDetails";

	}

	// findByname based on click from UI
	@RequestMapping("/getOnClickData")
	public String getOnClickData(Model model, @RequestParam String keyword) {
		keyword = keyword.substring(0, 1).toUpperCase() + keyword.substring(1).toLowerCase();
		List<InterviewDetails> list = ols.findByInterviewQuestion(keyword);
		model.addAttribute("list", list);
		model.addAttribute("keyword", keyword);
		return "viewAllInterviewDetails";
	}

	@RequestMapping(value = "/saveInterviewInfo", method = RequestMethod.POST)
	public String save(@ModelAttribute("interviewDetails") InterviewDetails interviewDetails, Model model) {
		
		String interviewQuestion = interviewDetails.getInterviewQuestion();
		interviewQuestion = interviewQuestion.substring(0,1).toUpperCase() + interviewQuestion.substring(1).toLowerCase();
		if (interviewDetails.getInterviewQuestion() != null) {
			interviewDetails.setInterviewQuestion(interviewQuestion);
			InterviewDetails saveOldLap = ols.saveOldLap(interviewDetails);
			model.addAttribute("command", saveOldLap);
			return "index";// will redirect to viewemp request mapping
		}
		return "index";
	}
	// pagination applied for list
	@RequestMapping(value = ("/getAllinterviews"), method = RequestMethod.GET)
	public String getAll(@RequestParam(defaultValue = "0") Integer pageNo,
			@RequestParam(defaultValue = "10") Integer pageSize, @RequestParam(defaultValue = "id") String sortBy,
			Pageable p, Model model) {
		Pageable pageableRequest = new PageRequest(pageNo, pageSize);
		Page<InterviewDetails> content = ir.findAll(pageableRequest);
		List<InterviewDetails> list = content.getContent();
		if (list.size() < 0) {
			new ArrayList<InterviewDetails>();
		}
		model.addAttribute("list", list);
		return "viewAllInterviewDetails";
	}

	/* It updates model object. */
	@RequestMapping(value = "getInterviewById/interview/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("command") InterviewDetails i) {
		ols.updateSave(i);
		return "redirect:/interview/getAllinterviews";
	}

	// view & get oneObject from list.
	@RequestMapping(value = "/getInterviewById/{id}", method = RequestMethod.GET)
	public String getInterviewById(@PathVariable("id") int id, Model model) {
		InterviewDetails interviewDetails = ols.getInterviewObjectFromListById(id);
		model.addAttribute("command", interviewDetails);
		return "editinterview";
	}

	/* It deletes record for the given id in URL and redirects to /viewemp */
	@RequestMapping(value = "/deleteInterview/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		ols.deleteInterview(id);
		return "redirect:/interview/getAllinterviews";
	}

	@GetMapping("/user/me")
	public Principal user(Principal principal) {
		return principal;
	}

}
