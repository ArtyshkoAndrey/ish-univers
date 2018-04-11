<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="yandex-verification" content="524c701dab4afa39" />
        <meta name="theme-color" content="#ffffff">
        <meta name="google-site-verification" content="C-LHN17I6Zn6ZIzFsUyPo5BQex0Qj4SA1ysU2JSBnH8" />
        <link rel="icon" type="image/png" href="{{ asset('favicon/favicon.ico') }}">
        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>@yield('title')</title>
        <meta name="keyword" content="@yield('meta_keyword')">
        <meta name="description" content="@yield('meta_description')">
        <meta name="author" content="@yield('author')" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" />
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.css">
        <link rel="stylesheet" href="{{ asset('css/menu.css') }}">
        <meta http-equiv="content-language" content="ru" />
        <meta name=”google” content=”notranslate” />
        <meta name=”robots” content="index, nofollow, archive" />
        <meta name="yandex" content="noyaca" /> @yield('styles')
    </head>

    <body>
        <div id="app">

            <!-- Navbar -->
            <nav class="navbar navbar-toggleable-md navbar-custom {{ Request::path() == '/' ? '' : 'fixed-top'  }}">
                <div class="container">
                    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <a class="navbar-brand" href="{{route('index')}}"><img src="{{asset('upload/header/' . $headers->logo)}}" alt="" class="img-fluid" style="height:40px;"></a>

                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="{{ Request::path() == '/' ? '#services' : route('index').'/#services'  }}">Курсы на выбор</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ Request::path() == '/' ? '#plan' : route('index').'/#plan'  }}">Учебный план</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ Request::path() == '/' ? '#teacher' : route('index').'/#teacher'  }}">Преподаватели</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ Request::path() == '/' ? '#gallery' : route('index').'/#gallery'  }}">Галлерея</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ Request::path() == '/' ? '#map' : route('index').'/#map'  }}">Где мы находимся</a>
                            </li>
                            <li class="nav-item {{{ Request::is('/') ? '' : 'active'  }}}">
                                <a class="nav-link" href="{{ route('news') }}">Новости</a>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <!-- End Navbar -->


            @yield('content')
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
        <!-- Yandex.Metrika counter -->
        <script type="text/javascript">
            (function (d, w, c) {
                (w[c] = w[c] || [])
                .push(function () {
                    try {
                        w.yaCounter48277403 = new Ya.Metrika({
                            id: 48277403
                            , clickmap: true
                            , trackLinks: true
                            , accurateTrackBounce: true
                            , webvisor: true
                        });
                    } catch (e) {}
                });

                var n = d.getElementsByTagName("script")[0]
                    , s = d.createElement("script")
                    , f = function () { n.parentNode.insertBefore(s, n); };
                s.type = "text/javascript";
                s.async = true;
                s.src = "https://mc.yandex.ru/metrika/watch.js";

                if (w.opera == "[object Opera]") {
                    d.addEventListener("DOMContentLoaded", f, false);
                } else { f(); }
            })(document, window, "yandex_metrika_callbacks");

        </script>
        <noscript><div><img src="https://mc.yandex.ru/watch/48277403" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
        <!-- /Yandex.Metrika counter -->
        @yield('script')

    </body>

</html>
