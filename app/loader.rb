class Loader
  def initialize(path)
    @path = path
  end

  def call
    File.read(@path).split("\n")
  end

  def self.call(path)
    new(path).call
  end

end
