require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :inicio
end

get '/about' do
  erb :sobre
end

get '/contact' do
  erb :contacto
end

__END__
@@layout
<!doctype html>
<html lang="es">
<head>
  <title>Mi Propia Web</title>
  <meta charset="utf-8">
</head>
<body>
  <header>
    <h1>Mi Propia pagina</h1>
    <nav>
      <ul>
        <li><a href="/" title="Inicio">Inicio</a></li>
        <li><a href="/about" title="Sobre mi">Sobre mi</a></li>
        <li><a href="/contact" title="Contacto">Contacto</a></li>
      </ul>
    </nav>
  </header>
  <section>
            <%= yield %>
  </section>
</body>
</html>

@@inicio
  <p>Esta es inicio</p>

@@sobre
  <p>Este soy yo</p>

@@contacto
  <p>Este es contacto</p>
