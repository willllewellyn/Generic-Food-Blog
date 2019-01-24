# frozen_string_literal: true

module TheirRecipesService
  class << self
    def record_views(session_id, page_id, page_name)
      av = TheirRecipesView.new user_id: session_id, page_id: page_id, page_name: page_name
      av.save
    end
  end
end
