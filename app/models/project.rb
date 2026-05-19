class Project < ApplicationRecord
  def gallery_images
    JSON.parse(gallery || "[]")
  end
end
