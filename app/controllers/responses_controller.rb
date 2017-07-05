class ResponsesController < ApplicationController
  before_action :authorize, only: [:new, :edit, :destroy]

  def index
    @responses = Response.all
  end

  def show
    @response = Response.find(params[:id])
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    if @response.save
    flash[:notice] = "Response successfully added!"
      redirect_to  responses_path
    else
      render :new
    end
  end

  def edit
    @response = Response.find(params[:id])
  end

  def update
    @response= Response.find(params[:id])
    if @response.update(response_params)
      flash[:notice] = "Response successfully updated!"
      redirect_to responses_path
    else
      render :edit
    end
  end

  def destroy
    @response = Response.find(params[:id])
    if @response.destroy
      flash[:notice] = "Response successfully removed!"
      redirect_to responses_path
    end
  end

private
  def response_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:response).permit(:content)
  end
end
