class LineProcessor
  def initialize(line)
    @line = line
  end

  def process
    first_integer
  end

  private

  attr_reader :line

  def first_integer
    convert_to_floats.find { |num| num > 0.0 }
  end

  def convert_to_floats
    split_line.map(&:to_f)
  end

  def split_line
    line.split
  end
end
