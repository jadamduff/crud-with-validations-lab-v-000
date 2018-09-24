class Song < ActiveRecord::Base
  validates_with TitleValidator
  validates_with ReleaseYearValidator
  validates :title, presence: true
  validates :released, inclusion: { in: [true, false] }
  validates :artist_name, presence: true
  validates :title, uniqueness: { scope: [:release_year, :artist_name]}
end
