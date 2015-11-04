class Image < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :uri, presence: true,
                    length: { minimum: 5 }
end
