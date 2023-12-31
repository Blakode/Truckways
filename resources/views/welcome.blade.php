@extends('layouts.app')
@section('title', 'Home')

@section('content')
<section class="animated fadeInUp delay-1s p-3 intro-section">
	<div class="container">
		<div class="row">
			<div class="col-sm-3 animated fadeInLeft delay-1s intro-left">
				<h4 class="about-txt">ABOUT US</h4>
			</div>
			<div class="col-sm-9 animated fadeInRight delay-1s intro-right">
				<p>We are an innovative, cross-functional logistics platform that aggregates end-to-end transportation operations for effective regular and reverse logistics operations and management.
                </p>
			</div>
		</div>
	</div>
</section>
<section class="latest-loads animated fadeInUp delay-1s mt-1">
	<div class="container">
		<div class="text-center animated fadeInDown delay-1s mt-1 ll-container">
			<h4 class="ll-text"><b>Latest Load Bids</b></h4>
		</div>
		<div class="table-responsive mt-5">
			<table class="table" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Date</th>
						<th>Load Title</th>
						<th>Location</th>
						<th>Destination</th>
						<th>Budget</th>
						<th>Truck Type</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>Date</th>
						<th>Load Title</th>
						<th>Location</th>
						<th>Destination</th>
						<th>Budget</th>
						<th>Truck Type</th>
					</tr>
				</tfoot>
				<tbody>
                    @foreach ($loads as $load)
                    @if ($loop->iteration <= 10 && $load->load_type == 0)
                    <tr class="animated flash animated-rows">
                        <td>{!! htmlspecialchars_decode(date('j<\s\up>S</\s\up> F Y', strtotime($load->created_at))) !!}</td>
                        <td>{{$load->title}}</td>
                        <td>{{$load->pickup}}</td>
                        <td>{{$load->delivery}}</td>
                        <td>{{$load->budget}}</td>
                        <td>{{$load->truck_type}}</td>
                    </tr>
                    @endif
                    @endforeach
				</tbody>
			</table>
		</div>
	</div>
</section>
<div class="wwd-section animated fadeInUp delay-1s">
	<div class="wwd-container">
		<div class="wwd-box1">
			<div class="wwd-box2">
                <h2 class="wwd-head">Why us?</h2>
                <p>We provide an effective and reliable platform for logistics networking between load/goods owners and drivers for:</p>
				<div class="wwd-content mt-3">
					<h4 class="mb-3">Interstate Goods Delivery</h4>
					<h4 class="mb-3">Competitive Pricing</h4>
					<h4 class="mb-3">Safe And Secure Moves</h4>
					<h4 class="mb-3">Timely Delivery</h4>
				</div>
			</div>
		</div>
	</div>
	<div class="wwd-container2">
		<div class="truckClip">
			<img src="/images/truckMask.svg" class="truckMask img-fluid"></div>
		</div>
	</div>
</div>

<section class="animated fadeInUp delay-1s p-5 intro-section">
	<div class="container">
		<div class="row">
			<div class="col-sm-5 animated fadeInLeft delay-1s">
				<h4 class="ll-text" style="width:100%"><b>Our Vehicle Range</b></h4>
			</div>
		</div>
		<div class="vehicle-range">
            <div class="vehicle-img text-center">
				<img class="img-fluid" src="https://res.cloudinary.com/ifedeejoy/image/upload/v1593688512/light-mini_zmvxxp.png" alt="Light Mini Van">
				<h6 class="mt-2">Vans</h6>
            </div>
            <div class="vehicle-img text-center">
				<img class="img-fluid" src="https://res.cloudinary.com/ifedeejoy/image/upload/v1593688512/mini-van_ugpaia.jpg" alt="Mini Van">
				<h6 class="mt-2">Mini-Vans</h6>
            </div>
            <div class="vehicle-img text-center">
				<img class="img-fluid" src="https://res.cloudinary.com/ifedeejoy/image/upload/v1593688511/covered-body_rrqqae.png" alt="Covered Body Truck">
				<h6 class="mt-2">Covered Body Trucks</h6>
            </div>
			<div class="vehicle-img text-center">
				<img class="img-fluid" src="https://res.cloudinary.com/ifedeejoy/image/upload/v1593688513/sided-body_okfxkt.jpg" alt="Sided Body Trucks">
				<h6 class="mt-2">Sided Body Trucks</h6>
			</div>
			<div class="vehicle-img text-center">
				<img class="img-fluid" src="https://res.cloudinary.com/ifedeejoy/image/upload/v1593688513/trailer_zkbzss.jpg" alt="Trailer Truck">
				<h6 class="mt-2">Trailers</h6>
			</div>
			<div class="vehicle-img text-center">
				<img class="img-fluid" src="https://res.cloudinary.com/ifedeejoy/image/upload/v1593688513/tipper_khpbre.jpg" alt="Tipper Truck">
				<h6 class="mt-2">Tippers</h6>
            </div>
            <div class="vehicle-img text-center">
				<img class="img-fluid" src="https://res.cloudinary.com/ifedeejoy/image/upload/v1593688512/heavy-duty_egs45x.jpg" alt="Heavy Duty Trucks">
				<h6 class="mt-2">Heavy Duty Trucks</h6>
			</div>
		</div>
	</div>
</section>
<section class="animated fadeInUp delay-1s mb-5">
	<div class="container text-center">
		<div class="animated fadeInDown delay-1s mt-5 testimonial-container">
			<h3 class="testimonial-txt"><b>Testimonials</b></h3>
			<div class="short-cont text-center">
				<div class="short-border"></div>
			</div>
		</div>
		<p class="mt-4">Hear the feedback from our customers</p>
	</div>
	<div class="test-cont">
		<div class="test-numbers col-sm-6">
			<div class="row">
				<div class="col text-center mt-4 mb-5">
					<img class="img-fluid" src="/images/delivery-truck.svg" alt="Delivery Truck">
					<h1><b>300</b></h1>
					<h6>Vehicles & Drivers</h6>
				</div>
				<div class="col text-center mt-4 mb-5">
					<img class="img-fluid" src="/images/box.svg" alt="Box">
					<h1><b>150</b></h1>
					<h6>Interstate Deliveries</h6>
				</div>
			</div>
			<div class="row">
				<div class="col text-center mb-4">
					<img class="img-fluid" src="/images/calendar.svg" alt="Calendar">
					<h1><b>5</b></h1>
					<h6>Years Of Service</h6>
				</div>
				<div class="col text-center mb-4">
					<img class="img-fluid" src="/images/user-dark.svg" alt="User Icon">
					<h1><b>200</b></h1>
					<h6>Happy Clients</h6>
				</div>
			</div>
		</div>
		<div class="user-test col-sm-6">
			<div id="testimonial-carousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<div class="test-box1">
							<div class="test-box2">
								<div class="test-header">
									<div class="row">
										<div class="col-sm-4">
											<img src="https://res.cloudinary.com/ifedeejoy/image/upload/v1599985066/unnamed_wiwlpo.jpg" class="img-fluid z-depth-1 rounded-circle" alt="Customer image">
										</div>
										<div class="col-sm">
											<h5 class="mt-2">Rasheed Hammed</h5>
											<p>Driver</p>
										</div>
									</div>
								</div>
								<div class="test-message mt-4 p-2">
									<p>Ever since I joined Truckways, no more endless soliciting for loads</p>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="test-box1">
							<div class="test-box2">
								<div class="test-header">
									<div class="row">
										<div class="col-sm-4">
											<img src="https://res.cloudinary.com/ifedeejoy/image/upload/v1599985213/20190215114938-Funding-African-american-business-woman_mw0has.jpg" class="img-fluid z-depth-1 rounded-circle" alt="Customer image">
										</div>
										<div class="col-sm">
											<h5 class="mt-2">Nneka Raymond</h5>
											<p>Shipper</p>
										</div>
									</div>
								</div>
								<div class="test-message mt-4 p-2">
									<p>My goods get delivered promptly, no hassles, business has never been better!</p>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="test-box1">
							<div class="test-box2">
								<div class="test-header">
									<div class="row">
										<div class="col-sm-4">
											<img src="https://res.cloudinary.com/ifedeejoy/image/upload/v1599985243/re-max-llc-real-estate-estate-agent-business-sales-png-favpng-qYEgPpzfZxcp7URDNLRpqW1g2_nklpdo.jpg" class="img-fluid z-depth-1 rounded-circle" alt="Customer image">
										</div>
										<div class="col-sm">
											<h5 class="mt-2">Patrick Idowu</h5>
											<p>Agent</p>
										</div>
									</div>
								</div>
								<div class="test-message mt-4 p-2">
									<p>Joining truckways was a great decision! I earn steadily as an agent part-time while working a full time job.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#testimonial-carousel" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#testimonial-carousel" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
</section>
@endsection
@section('scripts')
	@parent
@endsection
