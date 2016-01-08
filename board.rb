class Board
  def initialize
    @grid = Array.new(9) {Array.new(9) {Tile.new}}

  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @grid[row][col] = value
  end

  def populate(bombs = 10)
    @grid.flatten.sample(bombs).each do |tile|
      tile.bomb = true
    end
  end
end
