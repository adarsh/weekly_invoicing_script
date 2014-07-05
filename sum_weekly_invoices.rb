require 'date'

class SumWeeklyInvoices
  def initialize(filename)
    @filename = filename
  end

  def add
    p "Sum is #{load_file_data.round(1)} for the week of #{Date.today}"
  end

  private

  attr_reader :filename

  def load_file_data
    text.inject(0) do |sum, line|
      if line[0] == '*'
        sum += LineProcessor.new(line).process || 0
      else
        sum
      end
    end
  end

  def text
    File.readlines(filename)
  end
end
