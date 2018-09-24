class TitleValidator < ActiveModel::Validator
  def validate(record)
    if record[:artist_name]

      if !Song.where("id != ? AND release_year = ? AND artist_name = ? AND title = ?", record[:id], record[:release_year], record[:artist_name], record[:title]).empty?
        record.errors[:title] << 'song already exists.'
      end
    end
  end
end
