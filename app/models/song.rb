class Song < ActiveRecord::Base
  validates_with TitleValidator
  validates_with ReleaseYearValidator
  validates :released, inclusion: { in: [true, false] }
  validates :artist_name, presence: true
end
