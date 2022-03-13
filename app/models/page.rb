class Page < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :writer_name, :presence => true

  # Scopes

  def to_s
    created_at
  end

end
