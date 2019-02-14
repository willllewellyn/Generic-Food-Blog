# frozen_string_literal: true

module GeneralPageService
  class << self
    def record_views(session_id, page_name)
      temp = GeneralPageView.new session_id: session_id, page_name: page_name
      temp.save
    end

    def record_visitors(session_id)
      gpv = Visitor.new name: session_id
      gpv.save
    end

    def recommendation(session_id)
      Visitor.find_by_name(session_id)
    end
  end
end
