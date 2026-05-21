class News < ApplicationRecord
  validates :link, format: { with: /\Ahttps?:\/\/.+\z/i, message: "debe ser una URL válida (http:// o https://)" }, allow_blank: true

  def to_param
    slug
  end
end
