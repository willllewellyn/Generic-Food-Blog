# frozen_string_literal: true

module GeneralPageService
  class << self
    def record_views(page_name)
      GeneralPageView.find_or_create_by(page_name: page_name).increment!(:count)
    end
  end
end
