class TitleValidator < ActiveModel::Validator
  def validate(record)
    if record.artist_name
      if !Song.where("release_year = ? AND author_name = ? AND title = ?", record.release_year, record.author_name, record.title).empty?
        record.errors[:title] << 'song already exists.'
      end
    end
  end
end
