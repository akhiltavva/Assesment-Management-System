
<%@page import="com.ram.pojo.Faculty"%>
<%@page import="com.ram.pojo.FacultyCurd"%>
<%@page import="com.ram.pojo.Questions"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ram.pojo.QuestionCurd"%>
<%@ include file="header1.jsp" %>
    <!-- ***** Header Area End ***** -->
    
    <!-- ***** Search Area ***** -->
    
    <!-- ***** Main Banner Area Start ***** -->
        <!-- ***** Contact Us Area Starts ***** -->
    <section class="section" id="about">
        <div class="container">
                
                <%

        		QuestionCurd qc=new QuestionCurd();
        	   ArrayList<Questions> fq=qc.getQtf();
        	   ArrayList<Questions>gq=qc.getFg();
        	   
        	    FacultyCurd fc=new FacultyCurd();
        	    
        	    String email=request.getParameter("email");
        	    
        	    Faculty f=fc.getFaculty(email);
        	   
        	   
        	    
                %>
                 <h3> Faculty Administrator Questions</h3>
                   <form action="FacultySubmit">
                   <table class="table table-striped">
                    <tr>
                    <td>NO</td>
                    <td>Name</td>
                   <%
                    int i=1;
                   if(gq!=null)
                     for(Questions q: gq)
                     {
                    	 
                     %>
                       <tr>
                         <td><%=q.getId() %></td>
                         <td><%=q.getQ_name() %></td>
                       </tr>
                       <tr>
                         <td>Ans</td>
                         <td>
                         <input type="radio" name="a<%=q.getId() %>" > Very Good &nbsp;&nbsp;&nbsp;&nbsp;
                         <input type="radio" name="a<%=q.getId() %>" > Good &nbsp;&nbsp;&nbsp;&nbsp;
                         <input type="radio" name="a<%=q.getId() %>" > Average&nbsp;&nbsp;&nbsp;&nbsp;
                         <input type="radio" naDme="a<%=q.getId() %>" > Poor
                         </td>
                       </tr>
                       
                     <% 
                     }
                   %>     
                   </table>
                   
              <h3> Faculty  Questions for section <%=f.getFsection() %></h3>
                   <form action="FacultySubmit">
                   <table class="table table-striped">
                    <tr>
                    <td>NO</td>
                    <td>Name</td>
                   <%
                   // int i=1;
                   if(gq!=null)
                     for(Questions q: fq)
                     {
                    	 
                     %>
                       <tr>
                         <td><%=q.getId() %></td>
                         <td><%=q.getQ_name() %></td>
                       </tr>
                       <tr>
                         <td>Ans</td>
                         <td>
                         <input type="radio" name="f<%=q.getId() %>" > Very Good &nbsp;&nbsp;&nbsp;&nbsp;
                         <input type="radio" name="f<%=q.getId() %>" > Good &nbsp;&nbsp;&nbsp;&nbsp;
                         <input type="radio" name="f<%=q.getId() %>" > Average&nbsp;&nbsp;&nbsp;&nbsp;
                         <input type="radio" name="f<%=q.getId() %>" > Poor
                         </td>
                       </tr>
                       
                     <% 
                     }
                   %> 
                   
                   <tr>
                   
                   <td>
                     <input type="submit" value="Submit Assessment" class="btn btn-primary"  />
                   </td>
                   
                   </tr>    
                   </table>
                   
                   </form>
               </div>
    </section>
    <!-- ***** Contact Us Area Ends ***** -->
        
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-xs-12">
                    <div class="left-text-content">
                        <p>Copyright &copy; Reserved to ASM. 
                        
                       </div>
                </div>
                <div class="col-lg-6 col-xs-12">
                    <div class="right-text-content">
                            <ul class="social-icons">
                                <li><p>Follow Us</p></li>
                                <li><a rel="nofollow" href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a rel="nofollow" href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a rel="nofollow" href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a rel="nofollow" href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    

    <!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script> 
    <script src="assets/js/slick.js"></script> 
    <script src="assets/js/lightbox.js"></script> 
    <script src="assets/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>

    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>

  </body>
</html>