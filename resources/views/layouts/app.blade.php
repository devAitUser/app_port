<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
   <head>
      <meta charset="utf-8">
      <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
      <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
      <link href="https://fonts.googleapis.com/css2?family=Material+Icons"
         rel="stylesheet">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Oxygen:wght@300;400;700&display=swap" rel="stylesheet">
         

   
        
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

        
        
        
        
        <style>
          
            </style>

         <script src="{{ asset('assets/js/home_app.js') }}"></script>
      <!-- CSRF Token -->
      <meta name="csrf-token" content="{{ csrf_token() }}">
      <title>{{ config('app.name', 'Laravel') }}</title>

      <script type="text/javascript">
      var APP_URL = {!! json_encode(url('/')) !!}
      
      </script>
    
   </head>
   <body>
      @guest
      @else
      <!-- <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
         <a class="dropdown-item" href="{{ route('logout') }}"
            onclick="event.preventDefault();
                          document.getElementById('logout-form').submit();">
             {{ __('Logout') }}
         </a>

         <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
             @csrf
         </form>
         </div> -->
      @endguest
      <div class="wrapper">
     
         <div class="main-content">
            <div class="panel_view_header">
               <div class="header_panel_view">
                  <div class="card-header">
                     <img src="{{ asset('assets/img/anp.png') }}" class="logo_css">
                  </div>

                  
              
                  <ul class="hdMnu">
                     <li class="Mnuli lish  {{ request()->is('home')  ? 'active' : '' }} " data-bs-toggle="tooltip" data-bs-placement="top" title="Accueil">
                        <a href="{{route('home')}}">
                        <span class="material-icons">
                        home
                        </span>
                        </a>

                     </li>


                   
                     @if (Auth::user()->hasPermissionTo('gestion des prets')) 
                        <li class="Mnuli lish  {{ request()->is('prets')  ? 'active' : '' }} " data-bs-toggle="tooltip" data-bs-placement="top" title="Gestion des prets">
                           <a href="{{route('prets')}}">
                           <span class="material-icons">file_open</span>
                           </a>
                        </li>
                     @endif


                  
           
                     <li class="Mnuli lish  {{ request()->is('user_profile')  ? 'active' : '' }} " data-bs-toggle="tooltip" data-bs-placement="top" title="Mon Profil">
                        <a href="{{route('user_profile')}}">
                        <span class="material-icons">manage_accounts</span>
                        </a>
                     </li>


                     <li class="Mnuli lish  {{ request()->is('request_delete_dossier')  ? 'active' : '' }} " data-bs-toggle="tooltip" data-bs-placement="top" title="les demandes de suppression ">
                        <a href="{{route('request_delete_dossier')}}">
                        <span class="material-icons">rule_folder</span>
                        </a>
                     </li>
                
                 
   
                     @if (Auth::user()->hasRole('admin')) 
                     <li class="Mnuli lish  {{ request()->is('user_list')  ? 'active' : '' }} " data-bs-toggle="tooltip" data-bs-placement="top" title="Gestion des utilisateurs">
                        <span class="material-icons">
                        <a href="{{route('user_list') }}">
                           

                           <span class="material-icons">group_add</span>
                        
                        </a>
                        </span>
                     </li>
                     @endif
                
                   
                     @if (Auth::user()->hasPermissionTo('Modifier le plan de classement')) 
                     <li class="Mnuli lish {{ request()->is('organigramme')  ? 'active' : '' }}" data-bs-toggle="tooltip" data-bs-placement="top" title="Plan de classement">
                        <a href="{{route('home_organigramme')}}">
                           <span class="material-icons  ">
                           account_tree
                           </span>

                         </a>
                     </li>
                     @endif


                  

               


                     @if (Auth::user()->hasRole('admin')) 
                     <li class="Mnuli lish {{ request()->is('roles')  ? 'active' : '' }}  "  data-bs-toggle="tooltip" data-bs-placement="top" title="Gestion des roles">
                     <a href="{{route('roles.index') }}">
                        <span class="material-icons">
                        rule
                        </span> </a>
                     </li>
                     @endif

                     <li class="Mnuli lish" data-bs-toggle="tooltip" data-bs-placement="top" title="Quitter">
                        
                        <a href="{{route('logout') }}" href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();">
                           <span class="material-icons">
                              logout
                           </span> </a>
                           <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                              @csrf
                           </form>
                        </li>

                    

                  
                  </ul>

               </div>
            </div>
            <div class="panel_view">
               <img src="{{ asset('img_app/text830.png') }}" class="logo_menu">
            </div>
            <div class="panel_view_bottom">

                 @yield('content')

            </div>
            <footer class="mt-auto block_footer">
               <p>Copyright 2022 - <strong>ANP</strong> – Tous droits réservés </p>
             </footer>
         </div>
      </div>
      </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      <script>
         var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
         var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
         return new bootstrap.Tooltip(tooltipTriggerEl)
         })
      </script>
   </body>
</html>