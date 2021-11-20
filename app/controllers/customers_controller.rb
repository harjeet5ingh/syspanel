class CustomersController < ApplicationController
  include DatatableConcern
  before_action :set_customer, only: %i[ show ]

  def index
    respond_to do |format|
      format.js { render json: dt_data(klass: "Customer", params: params) }
      format.html
    end
  end

  private
  def set_customer
    @customer = Customer.find_by_id params[:id]
  end
end
