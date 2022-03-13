class Reader < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :email, :presence => true

  # Scopes

  def to_s
    reader_name
  end

end
