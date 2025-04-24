class MyClientsController < ApplicationController
  before_action :set_my_client, only: %i[ show edit update destroy ]

  # GET /my_clients or /my_clients.json
  def index
    @my_clients = MyClient.all
  end

  # GET /my_clients/1 or /my_clients/1.json
  def show
  end

  # GET /my_clients/new
  def new
    @my_client = MyClient.new
  end

  # GET /my_clients/1/edit
  def edit
  end

  # POST /my_clients or /my_clients.json
  def create
    @my_client = MyClient.new(my_client_params)

    respond_to do |format|
      if @my_client.save
        format.html { redirect_to @my_client, notice: "My client was successfully created." }
        format.json { render :show, status: :created, location: @my_client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_clients/1 or /my_clients/1.json
  def update
    respond_to do |format|
      if @my_client.update(my_client_params)
        format.html { redirect_to @my_client, notice: "My client was successfully updated." }
        format.json { render :show, status: :ok, location: @my_client }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_clients/1 or /my_clients/1.json
  def destroy
    @my_client.destroy!

    respond_to do |format|
      format.html { redirect_to my_clients_path, status: :see_other, notice: "My client was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_client
      @my_client = MyClient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_client_params
      params.require(:my_client)
                             .permit(:name, :slug, :is_project, :self_capture, :client_prefix,
                                     :client_logo, :address, :phone_number, :city)
    end
end
