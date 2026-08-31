class Rack::Attack
  # Máximo 5 presupuestos por IP cada hora
  throttle("quotes/ip", limit: 5, period: 1.hour) do |req|
    req.ip if req.path == "/quotes" && req.post?
  end

  # Rutas estáticas que no pasan por el pipeline de assets pero no deben
  # contar como "peticiones de navegación" (favicon, robots, sitemap...)
  STATIC_PATHS = %w[/icon.png /icon.svg /robots.txt /sitemap.xml].freeze

  # Máximo 60 peticiones generales por minuto por IP (protección básica ante scraping)
  throttle("req/ip", limit: 60, period: 1.minute) do |req|
    req.ip unless req.path.start_with?("/assets") || STATIC_PATHS.include?(req.path)
  end

  # Respuesta cuando se supera el límite
  self.throttled_responder = lambda do |_req|
    [
      429,
      { "Content-Type" => "text/html; charset=utf-8" },
      ["<h1>Demasiadas solicitudes. Por favor, espera unos minutos e inténtalo de nuevo.</h1>"]
    ]
  end
end
