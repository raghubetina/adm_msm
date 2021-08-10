class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :characters,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :title, :uniqueness => { :scope => [:year, :director_id] }

  validates :title, :presence => true

  # Scopes

  def to_s
    created_at
  end

end
