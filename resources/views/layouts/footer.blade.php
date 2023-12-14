<footer class="animated fadeInUp delay-1s">
    <div class="footer">
        <div class="address mb-5">
            <h6 class="footer-heading">Address</h6>
            <div class="footer-box mt-3">
                <div class="row addresses">
                    <div class="col-sm-3">
                        <img class="img-fluid" src="/images/location.svg" alt="Location Pin">
                    </div>
                    <div class="col">
                        <h6><b>Location</b></h6>
                        <p>23, Adekunle Fajuyi, Ikeja G.R.A <br> Lagos, Nigeria</p>
                    </div>
                </div>
            </div>
            <div class="footer-box mt-3">
                <div class="row addresses">
                    <div class="col-sm-3">
                        <img class="img-fluid" src="/images/telephone.svg" alt="Phone Icon">
                    </div>
                    <div class="col">
                        <h6><b>Phone Number</b></h6>
                        <p>08138815183, 09012881281</p>
                    </div>
                </div>
            </div>
            <div class="footer-box mt-3">
                <div class="row addresses">
                    <div class="col-sm-3">
                        <img class="img-fluid" src="/images/envelope.svg" alt="Phone Icon">
                    </div>
                    <div class="col">
                        <h6><b>Email Address</b></h6>
                        <p>info@truckwaysng.com</p>
                    </div>
                </div>
            </div>
        </div>
                
        <div class="contact-form">
            <div class="footer-box footer-contact">
            @if (Session::has('Message_Sent'))
                <div class='alert-success' role='alert'>
                {{Session::get('Message_Sent')}}
                </div>
            @endif
                <h6 class="footer-heading">Give Us Your Feedback</h6>
                <form method='POST' action="{{Route('contact.us')}}" enctype='multipart/form-data'>
                    @csrf
                    <div class="md-form mb-3">
                        <input class="form-control" type="text" name="name" id="footer-name">
                        <label for="name">Name</label>
                    </div>
                    <div class="md-form mb-3">
                        <input class="form-control" type="email" name="email" id="footer-email">
                        <label for="email">Email</label>
                    </div>
                    <div class="md-form mb-3">
                        <input class="form-control" type="text" name="subject" id="footer-subject">
                        <label for="subject">Subject</label>
                    </div>
                    <div class="md-form mb-3">
                        <textarea name="message" class="md-textarea"></textarea>
                        <label for="name">Message</label>
                    </div>
                    <div class="text-center">
                        <button class="btn-dark">SEND</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


        <div class="lower-panel row">

            <div class="policy col-9 ml-4">
            <a href="/privacy" class='pri'><h6> Privacy Policy </h6></a> 
            </div>

            <div class="col-0 ml-5">
                <img src="/images/copyright.svg" class="copy-img img-fluid" alt="Copyright">
            </div>

            <div class="copyright col-0">
                <h6 class="footer-title ml-2">
                 Truckways {{date('Y')}}
                </h6> 
            </div>
            
        
        </div>


    </div>
</footer>