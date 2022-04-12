require 'file_parser'

describe FileParser do
  it 'orders webpages by number of page views, from most page views to least page views' do
    file_parser = FileParser.new('./test.log', 'page_views')
    expect(file_parser.parse_file).to eq([['/help_page/1', 4], ['/home', 2], ['/contact', 1]])
  end

  it 'orders webpages by number of unique views, from most unique views to least unique views' do
    file_parser = FileParser.new('./test.log', 'unique_views')
    expect(file_parser.parse_file).to eq([['/help_page/1', 3], ['/home', 2], ['/contact', 1]])
  end
end
