@extends('layout');
@section('content')
    <div class="container">
        <div class="row  justify-content-center">
            <div class="col-md-5 card shadow py-4">
                <h3>User Registration Form</h3>
                <!-- resources/views/register.blade.php -->
                <form method="POST" action="{{ route('registerUser') }}">
                    @csrf
                    <input class="form-control mb-1" type="text" name="name" placeholder="Name"  >
                    @error('name')
                        <small class="text-danger"> {{ $message }}</small>
                    @enderror <br>
                    <input class="form-control mb-1" type="email" name="email" placeholder="Email"  >
                    @error('email')
                        <small class="text-danger"> {{ $message }}</small>
                    @enderror <br> 
                    <div class="input-group my-1">
                        <input type="text" class="form-control" id="country" style="max-width: 80px; height:37px; background-color:lightblue" placeholder="Code">
                        <input class="form-control mb-2" type="text" name="phone" placeholder="Phone">
                      </div>
                      
                    <input class="form-control mb-1" type="password" name="password" placeholder="Password"  >
                    @error('password')
                        <small class="text-danger"> {{ $message }}</small>
                    @enderror <br>
                    <input class="form-control" type="password" name="password_confirmation" placeholder="Confirm Password"
                         >
                    @error('password_confirmation')
                        <small class="text-danger"> {{ $message }}</small>
                    @enderror <br>
 
                    <select class="form-select my-1" name="role">
                        <option value="" disabled selected>Admin/User</option>
                        <option value="admin">admin</option>
                        <option value="user">user</option>
                    </select>
                    @error('role')
                        <small class="text-danger"> {{ $message }}</small>
                    @enderror <br>
                    <button class="btn btn-primary" type="submit">Register</button>
                </form>
                <a href="{{ route('show.login') }}" class="text-primary">Already Have an Account</a>
            </div>
        </div>
    </div>
@endsection
