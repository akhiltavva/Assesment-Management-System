
<%@ include file="header1.jsp" %>
    <!-- ***** Header Area End ***** -->
    
    <!-- ***** Search Area ***** -->
    
    <!-- ***** Main Banner Area Start ***** -->
        <!-- ***** Contact Us Area Starts ***** -->
    <section class="section" id="about">
        <div class="container">
                    <h2 align="center">Welcome to <%=session.getAttribute("uname") %></h2>
                    <br>
                    <form action="TakeFTest.jsp" method="post">
                     <input type="hidden" name="email" value='<%=session.getAttribute("uname") %>'/>
                    <center>   <button  type="submit" class="btn btn-primary">
                    Click Here To Start Assessment </button>
                    </form>
               </center>
                    
            <div class="row">
                        <div class="col-lg-2 col-md-2 col-xs-2">
                        </div>
                <div class="col-lg-8 col-md-8 col-xs-8" style="margin:0px auto">
                
                    
                </div>
                
                <div class="col-lg-2 col-md-2 col-xs-2">
                        </div>
            
        </div>
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