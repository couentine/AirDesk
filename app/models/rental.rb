class Rental < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :owner, optional: true
  def self.search(search)
    where("city LIKE ?", "%#{search}%")
  end

end
