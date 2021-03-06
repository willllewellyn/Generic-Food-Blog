# frozen_string_literal: true

module BlogsService
  class << self
    def record_views(session_id, page_id, page_name)
      av = BlogView.new user_id: session_id, page_id: page_id, page_name: page_name
      av.save
    end
  end
end
