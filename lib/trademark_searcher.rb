require "trademark_searcher/scraper"
require "trademark_searcher/result"
require "trademark_searcher/version"

class TrademarkSearcher
  extend Version
  extend Scraper

  def self.search_by(keyword)
    elements = get_searched_elements(keyword)
    return if elements.nil?
    elements.map { |e| Result.new(e) }
  end
end
