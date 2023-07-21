require_relative "loader"
require_relative "validator"

class Parser
  def initialize(path, loader: Loader, validator: Validator)
    @path = path
    @loader = loader
    @validator = validator
  end

  def call
    @loader.call(@path).inject(0) do |sum, line|
      sum+=1 if @validator.call(line)
      sum
    end
  end
end
