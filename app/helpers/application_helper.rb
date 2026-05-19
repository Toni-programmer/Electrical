module ApplicationHelper
  def safe_external_url(url)
    return nil unless url.present? && url.match?(/\Ahttps?:\/\/.+\z/i)
    url
  end
end
