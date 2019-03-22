<nav>

    <ul>
        @guest
            <li><a href="{{ route('register') }}">Inscription</a></li>
            <li><a href="{{ route('login') }}">Connexion</a></li>
            @else
                <li id="userName">  {{ Auth::user()->name }} </li>
                @if (Auth::user())
                    <li><span class="icon-loupe" aria-label="Icone recherche"></span></li>
                    <li>
                        <form class="navbar-form navbar-left" method="get" action="{{route('recherche')}}">
                            <div class="form-group">
                                <input type="search" name="recherche" class="form-control" placeholder="Search">
                                <button type="submit" class="btn btn-default">Rechercher</button>
                            </div></form></li>
                    <li><span class="icon-crayon" aria-label="Icone recherche"></span></li>
                    <li><a href="{{ route('mes_histoires') }}">Mes histoires</a></li>

                @endif
                <li><a href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                              document.getElementById('logout-form').submit();">Déconnexion</a></li>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                </form>
                @endguest
    </ul>
</nav>