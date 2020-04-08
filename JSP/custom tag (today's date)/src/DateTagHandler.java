package tags;
import javax.servlet.jsp.tagext.TagSupport;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;  
import java.time.LocalDate;
public class DateTagHandler extends TagSupport {
   @Override
   public int doStartTag() throws JspException{
      try{
         //task of the tag
         JspWriter out = pageContext.getOut();
         out.println(LocalDate.now().toString());
      }catch(Exception e){
         e.printStackTrace();
      }
      return SKIP_BODY;
   }
}