# frozen_string_literal: true

module GeneralPageService
  class << self
    def record_views(session_id, page_name)
      temp = GeneralPageView.new session_id: session_id, page_name: page_name
      temp.save
    end
  end
end
