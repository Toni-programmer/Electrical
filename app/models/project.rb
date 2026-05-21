class Project < ApplicationRecord
  def to_param
    slug
  end

  def gallery_images
    JSON.parse(gallery || "[]")
  end
end
