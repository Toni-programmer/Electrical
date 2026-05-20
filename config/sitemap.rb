SitemapGenerator::Sitemap.default_host = "https://electricasrinconvlc.es"
SitemapGenerator::Sitemap.public_path = "public/"
SitemapGenerator::Sitemap.compress = false

SitemapGenerator::Sitemap.create do
  add "/",               changefreq: "weekly",  priority: 1.0
  add "/services",       changefreq: "monthly", priority: 0.8
  add "/projects",       changefreq: "monthly", priority: 0.8
  add "/news",           changefreq: "weekly",  priority: 0.6
  add "/pages/company",  changefreq: "monthly", priority: 0.7
  add "/quotes/new",     changefreq: "monthly", priority: 0.7

  Service.find_each do |service|
    add "/services/#{service.id}", changefreq: "monthly", priority: 0.6
  end

  Project.find_each do |project|
    add "/projects/#{project.id}", changefreq: "monthly", priority: 0.6
  end
end
