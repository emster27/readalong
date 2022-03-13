class Comment < ApplicationRecord
  # Direct associations

  belongs_to :page

  # Indirect associations

  # Validations

  validates :reader_email, :presence => true

  # Scopes

  def to_s
    comment
  end

end
