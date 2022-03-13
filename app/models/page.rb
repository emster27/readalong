class Page < ApplicationRecord
  mount_base64_uploader :image, ImageUploader

  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :content, :presence => true

  validates :writer_name, :presence => true

  # Scopes

  def to_s
    created_at
  end

end
