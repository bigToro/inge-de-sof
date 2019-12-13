describe Board do

let(:board) { Board.new(5, 6) }

  describe 'initialize' do
    context 'with valid arguments' do
      it 'assigns x, y' do
        expect(board.x_size).to       eql(5)
        expect(board.y_size).to       eql(6)
      end

    end
  end

  describe 'print_board' do
    it 'prints an ASCII representation of the Board' do
      expect(board.print_board).to be_a(String)
      expect(board.print_board.length).to eql(36)
    end
  end

end
