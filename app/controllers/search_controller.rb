class SearchController < ApplicationController
  # # see app/controllers/application_controller.rb
  def index
    @query = Sport.ransack(params[:q])
    @sports = @query.result(distinct: true)
  end
end
