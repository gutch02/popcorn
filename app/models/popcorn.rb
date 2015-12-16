class Popcorn < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
