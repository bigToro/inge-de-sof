class Board
  attr_accessor :x, :y

  def inicializar(x, y)
    @x       = x
    @y       = y
  end

  def mostrar
    board = ''
    @y.times do |y|
      @x.times do |x|
          board << 'r'
      end
      board << "\n"
    end
    board
  end

end
