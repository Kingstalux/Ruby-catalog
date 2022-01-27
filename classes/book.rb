require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, published_date)
    super(published_date)
    @publisher = publisher
    @cover_state = cover_state
  end
end
