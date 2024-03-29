@extends('layouts.auth')

@section('content')

<style>
    input#identifiant , .input-field_pass {
    Font-family: "Source Sans Pro", "Helvetica Neue", Helvetica, Arial, sans-serif !important;
    font-size: 13px !important;
    letter-spacing: 0.05em;
    font-size: 11px;
    background-color: #EEEEEE;
}
</style>

<div class="main-content">

        <img src="{{ asset('assets/img/AMSlogo.png') }}" class="logo_login">

        <div class="block_login">
            <form method="POST" action="{{ route('login') }}">
              @csrf

                <div class="input-container login">
                    <span class="material-icons pers">
                        person
                        </span>
                    <input id="identifiant" class="input-field_login" type="text" value="{{ old('identifiant') }}" name="identifiant" required autocomplete="identifiant" autofocus >
                </div>


                <div class="input-container pass">
                    <span class="material-icons">
                        vpn_key
                        </span>
                    <input id="password" type="password" class="input-field_pass" type="password"  name="password" required autocomplete="current-password">
                </div>

                <input class="form-check-input" type="checkbox" name="remember" id="remember"  checked>

                <button type="submit"  class="btn_login">

                    <span class="material-icons">
                        login
                        </span>


                </button>

            </form>

            @error('identifiant')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

            
            @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
            @enderror


            
        </div>

      

</div>
@endsection
