class Image < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :likes
  validates :uri, presence: true,
                    length: { minimum: 5 }
  has_attached_file :upload, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :upload, content_type: /\Aimage\/.*\Z/
end

