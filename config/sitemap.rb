SitemapGenerator::Sitemap.default_host = "https://electricasrincon.es/"
SitemapGenerator::Sitemap.public_path = "public/"
SitemapGenerator::Sitemap.compress = false

SitemapGenerator::Sitemap.create do
  # "/" is added automatically by the gem (include_root) on the first add() call,
  # so it's not added here to avoid a duplicate. default_host keeps its trailing
  # slash so that auto-added root link is "https://electricasrincon.es/" and not
  # bare "https://electricasrincon.es" (which causes a redirect on crawl).
  add "/servicios",        changefreq: "monthly", priority: 0.8
  add "/proyectos",        changefreq: "monthly", priority: 0.8
  add "/noticias",         changefreq: "weekly",  priority: 0.6
  add "/empresa",          changefreq: "monthly", priority: 0.7
  add "/presupuestos/new", changefreq: "monthly", priority: 0.7

  Service.find_each do |service|
    add "/servicios/#{service.slug}", changefreq: "monthly", priority: 0.6
  end

  Project.find_each do |project|
    add "/proyectos/#{project.slug}", changefreq: "monthly", priority: 0.6
  end

  News.where(published: true).find_each do |news|
    add "/noticias/#{news.slug}", changefreq: "weekly", priority: 0.5
  end
end
