class Movie < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :title, :presence => true

  # Scopes

  def to_s
    created_at
  end

end
