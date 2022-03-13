class ReaderResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :reader_name, :string
  attribute :email, :string

  # Direct associations

  has_many   :bookmarks

  # Indirect associations

end
