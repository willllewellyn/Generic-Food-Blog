module ArticlesService
  class << self
    def record_views(session_id, page_id, page_name)
      av = ArticleView.new user_id: session_id, page_id: page_id, page_name: page_name
      av.save
    end
  end
end
