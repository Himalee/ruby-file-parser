require 'json'
require 'set'

class FileParser
  def initialize(file_name)
    @file_name = file_name
  end

  def parse_file
    url_visits = Hash.new(0)
    File.open(@file_name).each.map do |line|
      split_line = line.split(' ')
      url = split_line[0]
      url_visits[url] += 1
    end
    url_visits.sort_by { |_url, visits| -visits }
  end
end

