class Reader < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :email, :presence => true

  # Scopes

  def to_s
    reader_name
  end

end
