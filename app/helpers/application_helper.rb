module ApplicationHelper
  def safe_external_url(url)
    return nil unless url.present? && url.match?(/\Ahttps?:\/\/.+\z/i)
    url
  end

  # Builds a <title> that stays within Google's ~60 character display limit:
  # tries "{name} en Valencia | Electricas Rincón", drops "en Valencia" if
  # that's too long, then truncates {name} itself as a last resort.
  def seo_title(name, brand: "Electricas Rincón")
    with_city = "#{name} en Valencia | #{brand}"
    return with_city if with_city.length <= 60

    without_city = "#{name} | #{brand}"
    return without_city if without_city.length <= 60

    "#{name.truncate(60 - brand.length - 3, separator: ' ')} | #{brand}"
  end
end
