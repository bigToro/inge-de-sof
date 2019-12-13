require '/board'

class Game
  attr_accessor :board

  def inicializar(x, y)
    @board = Board.new(x, y)
    @board.mostrar()
  end
end
