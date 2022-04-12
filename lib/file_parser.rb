require 'set'

class FileParser
  def initialize(file_name, order_type)
    @file_name = file_name
    @order_type = order_type
  end

  def parse_file
    web_pages_count = Hash.new { |hash, key| hash[key] = {:page_views => 0, :users => []} }
    File.open(@file_name).each.map do |line|
      split_line = line.split(' ')
      url = split_line[0]
      user = split_line[1]
      web_pages_count[url][:page_views] += 1
      web_pages_count[url][:users] << user
    end
    if @order_type == 'page_views'
      web_pages_count.map { |k,v| [k, v[:page_views]]}.sort {|a,b| b[1] <=> a[1]}
    else
      web_pages_count.map { |k, v| [k, v[:users].to_set.count] }.sort {|a,b| b[1] <=> a[1]}
    end
  end
end