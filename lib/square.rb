class Square

  attr_reader :marking

  def initialize
    @marking = ''
  end

  def mark(mark)
    mark_square(mark)
  end

  def taken?
    @marking != ''
  end

  private

  attr_writer :marking

  def mark_square(mark)
    self.marking = mark
  end

end
