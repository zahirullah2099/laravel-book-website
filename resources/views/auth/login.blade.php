@extends('layout')
@section('content')
    <div class="container">
        <div class="row  justify-content-center">

            {{-- SUCCESS AND ERROR MESSEGES --}}
            @if(session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('success') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>

                @elseif (session('error'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ session('error') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif


            <div class="col-md-5 card shadow py-4">
                <h3>User Login Form</h3>
                <!-- resources/views/register.blade.php -->
                <form method="POST" action="{{ route('loginUser') }}">
                    @csrf
                    <label for="email">Email</label>
                    <input class="form-control mb-2 @error('email') is_invalid @enderror" type="email" name="email" placeholder="Email">
                    @error('email')
                    <small class="text-danger"> {{ $message }}</small>
                    @enderror <br>
                    <label for="password">Password</label>
                    <input class="form-control mb-2  @error('password') is_invalid @enderror" type="password" name="password" placeholder="Password">
                    @error('password')
                       <small class="text-danger"> {{ $message }}</small>
                    @enderror <br>
                    <button class="btn btn-primary" type="submit">Login</button>
                </form>

                <a href="{{ route('show.register') }}" class="text-primary">Create New Account</a>

            </div>
        </div>
    </div>
@endsection
