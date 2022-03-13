class Login < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :password, presence: true

  validates :password, length: { minimum: 8, maximum: 20 }

  validates :password, inclusion: { in: ["@", "-", "_"] }

  validates :useremail, presence: true

  # Scopes

  def to_s
    useremail
  end
end
