require 'file_parser'

describe FileParser do
  before(:each) do
    @file_parser = FileParser.new('./test.log')
  end

  it 'orders webpages by number of page views, from most page views to least page views' do
    expect(@file_parser.parse_file).to eq([['/help_page/1', 3], ['/home', 2], ['/contact', 1]])
  end
end
