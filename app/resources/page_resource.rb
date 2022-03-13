class PageResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :image, :string
  attribute :writer_name, :string
  attribute :content, :string

  # Direct associations

  has_many   :bookmarks

  has_many   :comments

  # Indirect associations

end
