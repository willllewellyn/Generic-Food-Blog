# frozen_string_literal: true

class VisitorsController < ApplicationController
  def index
    @visitors = Visitor.all
  end

  def show
    @visitor = Visitor.find(params[:id])
  end
end
