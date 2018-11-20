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
    @client = Client.new(client)
  end

  def destroy 

  end 

  private 

    def set_client 
      @client = Client.find(params[:id])
    end
end 
