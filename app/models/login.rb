class Login < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :password, :inclusion => { :in => [ "@", "-", "_" ]  }

  validates :useremail, :presence => true

  # Scopes

  def to_s
    useremail
  end

end
