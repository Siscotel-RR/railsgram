class Image < ApplicationRecord
    mount_uploader :picture, PictureUploader
    validates :picture, presence: true
    validates :description, length: {minimum:3, maximum:1000}
end
