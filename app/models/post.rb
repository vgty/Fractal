class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments
  has_attached_file :image, styles: {medium: "500x500>", small: "350x350>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
