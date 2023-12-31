<nav class="navbar navbar-expand-lg navbar-dark fixed-top @if(request()->is('/')) scrolling-navbar @else navdark-bg @endif">
    <div class="container">

    	<!-- Brand -->
		<a class="navbar-brand" href="/">
			<strong class="title"><img src="/images/logo.png" alt="Truckways" class="logo-img"></strong class="title">
		</a>

		<!-- Collapse -->
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

      <!-- Links -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto"></ul>
			<ul class="navbar-nav">
                @guest
                
                    @if (auth()->guard('truck_drivers')->check())
                        <li class="nav-item">
                            <a href="/drivers/home" class="nav-link {{ setActive(['/']) }} waves-effect waves-light"> Dashboard</a>
                        </li>
                        <li class="nav-item ml-3">
                            <a href="/find-truck" class="nav-link {{ setActive(['find-truck']) }} waves-effect waves-light">Find Truck</a>
                        </li>
                        <li class="nav-item ml-3">
                            <a href="/contact-us" class="nav-link {{ setActive(['contact-us']) }} waves-effect waves-light">Contact Us</a>
                        </li>
                    @else
                        <li class="nav-item">
                            <a href="/" class="nav-link {{ setActive(['/']) }} waves-effect waves-light"> Home</a>
                        </li>
                        <li class="nav-item ml-3">
                            <a href="#" class="nav-link {{ setActive(['find-truck']) }} waves-effect waves-light">Find Truck</a>
                        </li>
                        <li class="nav-item ml-3">
                            <a href="/contact-us" class="nav-link {{ setActive(['contact-us']) }} waves-effect waves-light">Contact Us</a>
                        </li>
                    @endif
                @endguest
				
                @auth
                    @if (auth()->user()->isAdmin == 1)
                        <li class="nav-item">
                            <a href="/admin/home" class="nav-link {{ setActive(['/']) }} waves-effect waves-light"> Dashboard</a>
                        </li>
                    @elseif(auth()->user()->isAdmin == 2)
                        <li class="nav-item">
                            <a href="/agents/home" class="nav-link {{ setActive(['/']) }} waves-effect waves-light"> Dashboard</a>
                        </li>
                    @else
                        <li class="nav-item">
                            <a href="/users/home" class="nav-link {{ setActive(['/']) }} waves-effect waves-light"> Dashboard</a>
                        </li>
                    @endif
                        <li class="nav-item ml-3">
                            <a href="/find-truck" class="nav-link {{ setActive(['find-truck']) }} waves-effect waves-light">Find Truck</a>
                        </li>
                        <li class="nav-item ml-3">
                            <a href="/contact-us" class="nav-link {{ setActive(['contact-us']) }} waves-effect waves-light">Contact Us</a>
                        </li>
                @endauth
				
				
				
				
                @guest
                    @if (auth()->guard('truck_drivers')->check())
                        <li class="nav-item ml-4">
                            <a href="{{ url('/logout') }}" class="nav-link waves-effect waves-dark long-btn black-text">Logout</a>
                        </li>
                    @else
                        <li class="nav-item ml-4">
                            <a href="{{url('login')}}" class="nav-link waves-effect waves-dark long-btn black-text">Login</a>
                        </li>
                    @endif
                @endguest

				@auth
                    <li class="nav-item ml-4">
                        <a href="{{ url('/logout') }}" class="nav-link waves-effect waves-dark long-btn black-text">Logout</a>
                    </li>
                @endauth
			</ul>
		</div>

    </div>
</nav>