class Rental < ApplicationRecord
  mount_uploader :picture, PictureUploader

  def self.search(search)
    where("city LIKE ?", "%#{search}%")
  end

end
