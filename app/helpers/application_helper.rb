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

  MESES_ES = %w[enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre].freeze

  def spanish_date(date)
    return nil unless date
    "#{date.day} de #{MESES_ES[date.month - 1]} de #{date.year}"
  end

  # Like image_tag, but serves a WebP source (with the original as fallback)
  # when a same-named .webp file exists next to the source image. The
  # <picture> wrapper uses "contents" so it never affects surrounding
  # flex/grid/object-fit layout — only the inner <img> does, exactly as
  # image_tag alone would.
  def photo_tag(name, alt:, **options)
    return image_tag(name, alt: alt, **options) if name.blank?

    webp_name = name.sub(/\.(jpe?g|png)\z/i, ".webp")
    return image_tag(name, alt: alt, **options) if webp_name == name
    return image_tag(name, alt: alt, **options) unless Rails.root.join("app/assets/images", webp_name).exist?

    content_tag(:picture, class: "contents") do
      tag.source(srcset: image_path(webp_name), type: "image/webp") +
        image_tag(name, alt: alt, **options)
    end
  end
end
