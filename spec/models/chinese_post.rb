class ChinesePost
  include Mongoid::Document
  include Mongoid::FullTextSearch

  field :title
  fulltext_search_in :title, zh: true
end
