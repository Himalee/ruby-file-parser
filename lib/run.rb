require_relative 'file_parser'

file_parser = FileParser.new(ARGV[0], ARGV[1])
puts file_parser.parse_file()