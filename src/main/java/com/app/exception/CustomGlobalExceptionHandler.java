package com.app.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class CustomGlobalExceptionHandler {

	@ExceptionHandler(value = DuplicateMatchIdException.class)
    public ModelAndView duplicateTraineeException(DuplicateMatchIdException e) {
        final ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("ref", e.getMatchEvent().getMatchid());
        modelAndView.addObject("message", "Cannot find given match id: "+e.getMatchEvent().getMatchid());
        modelAndView.setViewName("errorPage");
        return modelAndView;
    }
	@ExceptionHandler(value = NoValueEnteredException.class)
	public ModelAndView noValueEnteredException(NoValueEnteredException e) {
		final ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("ref", "Client side error");
		modelAndView.addObject("message", "No Values Entered! Please enter Values!");
		modelAndView.setViewName("errorPage");
		return modelAndView;
	}
	@ExceptionHandler(value = Exception.class)
    public ModelAndView CommonException(Exception e) {
        final ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("ref", "Client side error");
        modelAndView.addObject("message", "Check what you have entered!");
        modelAndView.setViewName("errorPage");
        return modelAndView;
    }

}
