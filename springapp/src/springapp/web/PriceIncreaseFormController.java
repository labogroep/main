package springapp.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import springapp.service.PriceIncreaseValidator;
import springapp.service.ProductManager;
import springapp.service.PriceIncrease;

@Controller
@RequestMapping("/priceincrease.htm")
public class PriceIncreaseFormController {

    /** Logger for this class and subclasses */
    protected final Log logger = LogFactory.getLog(getClass());

    //FIXME: use property files? It seems to be normal that @Value doesn't work in controllers
	//@Value("#{priceincrease['successView']}")
	String successView="hello.htm";
	String formView="priceincrease";
    
    private ProductManager productManager;

    PriceIncreaseValidator priceIncreaseValidator;
    
	@Autowired
	public PriceIncreaseFormController(PriceIncreaseValidator priceIncreaseValidator, ProductManager productManager){
		this.priceIncreaseValidator = priceIncreaseValidator;
		this.productManager = productManager;
	}
    
    @RequestMapping(method = RequestMethod.POST)
    public String onSubmit(@ModelAttribute("priceIncrease") PriceIncrease priceIncrease, BindingResult result, SessionStatus status)
            throws ServletException {


        int increase = priceIncrease.getPercentage();
        logger.info("Increasing prices by " + increase + "%.");

        //productManager.increasePrice(increase);
        
        priceIncreaseValidator.validate(priceIncrease, result);
		 
		if (result.hasErrors()) {
			//if validator failed
			logger.info("returning from PriceIncreaseForm view to " + formView);
			//return new ModelAndView(formView);
			return formView;
		} else {
			productManager.increasePrice(increase);
			status.setComplete();
			//form success
			logger.info("returning from PriceIncreaseForm view to " + successView);
			//return new ModelAndView(new RedirectView(successView));
			return "redirect:"+successView;
		}
    }

    @ ModelAttribute("priceIncrease")
    @RequestMapping(method = RequestMethod.GET)
    protected Object formBackingObject(HttpServletRequest request) throws ServletException {
        PriceIncrease priceIncrease = new PriceIncrease();
        priceIncrease.setPercentage(20);
        return priceIncrease;
    }

    public ProductManager getProductManager() {
        return productManager;
    }

}