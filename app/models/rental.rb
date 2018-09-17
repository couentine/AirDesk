class Rental < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
