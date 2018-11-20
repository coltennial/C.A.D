class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :destroy]

  def index
    @clients = Client.all
  end

  def show

  end

  def new
    @client = Client.new 
  end

  def create 
    @client = Client.new(client_params)
    if @client.save 
      redirect_to @client 
    else 
      render :new
    end
  end

  def destroy 
    @client.destroy 
    redirect_to clients_path
  end 

  private 

    def set_client 
      @client = Client.find(params[:id])
    end

    def client_params 
      params.require(:client).permit(:first_name, :last_name)
    end
end 
