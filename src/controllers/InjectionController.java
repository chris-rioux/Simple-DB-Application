package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.InjectionDAO;

@Controller
public class InjectionController {
	@Autowired
	private InjectionDAO injectionDAO;
	
	@RequestMapping(path="getSQLResults.do", params="query", method=RequestMethod.POST)
	public ModelAndView getSQLResults(@RequestParam("query") String q) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		mv.addObject("allData", injectionDAO.getSQLResults(q));
		//mv.addObject("headers", injectionDAO.getSQLResults(q));
		
		return mv;
	}

}
