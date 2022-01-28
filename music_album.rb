require_relative './classes/item'

class MusicAlbum < Item
  attr_reader :published_date, :on_spotify

  def initialize(published_date, on_spotify: false, archived: false)
    super(published_date, archived: false)
    @on_spotify = on_spotify
    @published_date = Date.parse(published_date)
    @archived = archived
  end

  def can_be_archived?
    DateTime.now.year - @published_date.year > 10 && @on_spotify == true
  end
end
