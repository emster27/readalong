class LoginResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :useremail, :string
  attribute :usertype, :boolean
  attribute :password, :string
  attribute :reader_id, :integer

  # Direct associations

  # Indirect associations

end
