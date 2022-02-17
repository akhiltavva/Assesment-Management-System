<%@ include file="header.jsp" %>       
    <!-- ***** Search Area ***** -->
    
    <!-- ***** Main Banner Area Start ***** -->
        <!-- ***** Contact Us Area Starts ***** -->
    <section class="section" id="about">
        <div class="container">
            <form class="form-horizontal"  method="GET" action="AddFaculty">
              <div class="row">
                 <div class="col-sm-3">
                 </div>
                 <div class="col-sm-9">
                <h2>Add Faculty</h2><br>
                <div class="form-group">
                    <label for="fname" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input type="text" name="fname" id="fName" placeholder="Full Name" class="form-control"  required>
                        <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" name="email" id="email" placeholder="Email" class="form-control" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" name="password" id="password" placeholder="Password" required class="form-control">
                    </div>
                </div>
                <!-- <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-9">
                        <input type="date" id="birthDate" class="form-control">
                    </div> 
                </div>-->
                <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Faculty Department</label>
                    <div class="col-sm-9">
                        <select id="country" name="department" required class="form-control">
                            <option value="">Select</option>
                            <option value="CSE">CSE</option>
                            <option value="IT">IT</option>
                            <option value="ECE">ECE</option>
                            <option value="EEE">EEE</option>
                            <option value="CIVIL">CIVIL</option>
                            <option value="MECH">MECH</option>
                            <option value="MBA">MBA</option>
                             <option value="MTECH">MTECH</option>
                            
                        </select>
                    </div>
                </div> <!-- /.form-group -->
               <!--   <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="femaleRadio" value="Female">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="maleRadio" value="Male">Male
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="uncknownRadio" value="Unknown">Unknown
                                </label>
                            </div>
                        </div>
                    </div>
                </div> --> <!-- /.form-group -->
                
                <div class="form-group">
                    <label for="fName" class="col-sm-3 control-label">Faculty Section</label>
                    <div class="col-sm-9">
                        <input type="text" name="fsection" id="firstName" placeholder="A B C" class="form-control"  required>
                        
                    </div>
                </div>
                <div class="form-group">
                    <label for="fName" class="col-sm-3 control-label">Faculty Year</label>
                    <div class="col-sm-9">
                        <input type="text" name="fyear" id="firstName" placeholder="2014 2015" class="form-control"  required>
                        
                    </div>
                </div>
                <div class="form-group">
                    <label for="fName" class="col-sm-3 control-label">Faculty Qualification</label>
                    <div class="col-sm-9">
                        <input type="text" name="fqualification" id="firstName" placeholder="Faculty Qualification" class="form-control"  required>
                        
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" name="submit" class="btn btn-primary btn-block">Register</button>
                    </div>
                </div>
                </div>
                
                 
                </div>
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