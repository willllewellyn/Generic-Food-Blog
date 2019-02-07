# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    session_id = session.id
    GeneralPageService.record_views(session_id, 'Homepage')
    GeneralPageService.record_visitors(session_id)
  end
end
