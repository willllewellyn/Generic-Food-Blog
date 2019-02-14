# frozen_string_literal: true

module TheirRecipesService
  class << self
    def record_views(session_id, page_id, page_name)
      trv = TheirRecipesView.new user_id: session_id, page_id: page_id, page_name: page_name
      trv.save

      visitor = Visitor.find_by_name(session_id)
      theirrecipe = Theirrecipe.find_by_name(page_name)

      visitor&.theirrecipes << theirrecipe
    end
  end
end
