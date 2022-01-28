class Label
  attr_accessor :title, :color, :items

  def initialize(title, color)
    @id = Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    if @items.include?(item)
      puts 'item already exists'
    else
      @items.push(item)
      item.label = self
    end
  end

  def to_json(json)
    json.generate({
                    title: title,
                    color: color
                  })
  end
end
