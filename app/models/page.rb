class Page < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :content, :presence => true

  validates :writer_name, :presence => true

  # Scopes

  def to_s
    created_at
  end

end
