require_relative 'file_parser'

file_parser = FileParser.new(ARGV[0], 'unique_views')
puts file_parser.parse_file()