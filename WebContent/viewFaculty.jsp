<%@page import="java.util.Iterator"%>
<%@page import="com.ram.pojo.Faculty"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ram.pojo.FacultyCurd"%>
<%@ include file="header.jsp" %>   
 <!-- ***** Header Area End ***** -->
    
    <!-- ***** Search Area ***** -->
    
    <!-- ***** Main Banner Area Start ***** -->
        <!-- ***** Contact Us Area Starts ***** -->
    <section class="section" id="about">
        <div class="container">
            <form class="form-horizontal"  method="GET" action="AddFaculty">
              <div class="row">
                 <div class="col-sm-1">
                 </div>
                 <div class="col-sm-9">
                <h6>Faculty Information</h2><br>
                
                  <table class="table">
                   
                       <tr>
                             <th>Full Name</th>
                             <th>Email</th>
                             <th>Password</th>
                             <th>Department</th>
                             <th>Sections</th>
                             <th>Years</th>
                             <th>Qualification</th>
                             <th>Delete</th>
                       </tr>
                       <%
                        FacultyCurd fc=new FacultyCurd();
                       
                       ArrayList<Faculty> al=fc.displayFaculty();
                       
                       Iterator<Faculty> it=al.iterator();
                       
                       while(it.hasNext())
                       {
                    	   Faculty f=it.next();
                       %>
                       
                       <tr>
                         <td><%=f.getFname()%></td>
                         <td><%=f.getEmail()%></td>
                         <td><%=f.getPassword()%></td>
                         <td><%=f.getDepartment()%></td>
                         <td><%=f.getFsection()%></td>
                         <td><%=f.getYears() %></td>
                         <td><%=f.getDepartment()%></td>
                         <td><%=f.getQualification()%></td>
                         <td><a href="DeleteFaculty?id=<%=f.getFid()%>">Delete</a></td>
                         
                       </tr>
                       <%
                       
                       }
                       %>
                    
                  </table>
                  
                  
                  </div>
                    
                </div>  <!-- /.form-group -->
               
                 
               
            </form> <!-- /form -->
        </div> <!-- ./container -->              
                
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