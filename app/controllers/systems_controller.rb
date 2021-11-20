class SystemsController < ApplicationController
  include DatatableConcern
  before_action :set_system, only: %i[ show ]

  def index
    respond_to do |format|
      format.js { render json: dt_data(klass: "System", params: params) }
      format.html
    end
  end

  private
  def set_system
    @system = System.find_by_id params[:id]
  end
end
