class ApplicationController < ActionController::Base
  before_action :set_query

  def set_query
    @query = Sport.ransack(params[:query])
    @sports = @query.result(distinct: true)
  end
end
