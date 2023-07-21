class Validator
  def initialize(line)
    @line = line
  end

  def call
    letter, min, max, password = extract_values
    (min.to_i..max.to_i).include?(password.count(letter))
  end

  def self.call(line)
    new(line).call
  end

  private

  def extract_values
    @line.scan /[^:\-\s\.]+/
  end
end
