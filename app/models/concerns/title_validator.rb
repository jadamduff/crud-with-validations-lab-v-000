class TitleValidator < ActiveModel::Validator
  def validate(record)
    if record[:artist_name]
      if !Song.where("release_year = ? AND artist_name = ? AND title = ?", record[:release_year], record[:artist_name], record[:title]).empty?
        record.errors[:title] << 'song already exists.'
      end
    elsif record[:title] == nil
      record.errors[:title] << "A title is required."
    end
  end
end
