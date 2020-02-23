class Post < ApplicationRecord
	has_attached_file :image
	validates :title, :description, :date, :presence => true
	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]

  	has_many :comments, dependent: :destroy
end