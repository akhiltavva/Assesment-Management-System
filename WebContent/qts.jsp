
<%@ include file="header.jsp" %>
    <!-- ***** Header Area End ***** -->
    
    <!-- ***** Search Area ***** -->
    
    <!-- ***** Main Banner Area Start ***** -->
        <!-- ***** Contact Us Area Starts ***** -->
    <section class="section" id="about">
        <div class="container">
                    <h2 align="center">Add  Questions To Students</h2>
            <div class="row">
                  <div class="col-lg-12 col-md-12 col-xs-12" style="margin:0px auto">
                
                     <form class="form-horizontal"  method="GET" action="AddSQuestion">
              <div class="row">
                 <div class="col-sm-3">
                 </div>
                 <div class="col-sm-9">
                
                <div class="form-group">
                    
                    <div class="col-sm-9">
                        <textarea type="text" rows="5" cols="75" name="qname" placeholder="Add Questions Here"></textarea>
                        
                         </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" name="submit" class="btn btn-primary btn-block">Click TO Add</button>
                    </div>
                </div>
                
                </div>
                </div>
                </form>
           
                  <p>
                         
                  </p>

                    
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