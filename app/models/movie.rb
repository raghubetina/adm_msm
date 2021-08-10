class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :characters,
             dependent: :destroy

  # Indirect associations

  has_many   :cast,
             through: :characters,
             source: :actor

  # Validations

  validates :title, uniqueness: { scope: %i[year director_id] }

  validates :title, presence: true

  # Scopes

  def to_s
    created_at
  end
end
