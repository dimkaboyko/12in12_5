class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :revies
  has_attached_file :image, styles: { medium: "400x400>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  searchkick
end
