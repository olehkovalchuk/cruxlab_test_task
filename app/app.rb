require_relative "parser"

path =  File.expand_path('../data.txt', __dir__)

p Parser.new(path).call
