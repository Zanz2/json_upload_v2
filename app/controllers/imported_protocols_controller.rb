class ImportedProtocolsController < ApplicationController
  before_action :set_imported_protocol, only: [:show, :edit, :update, :destroy]

  # GET /imported_protocols
  # GET /imported_protocols.json
  def index
    @imported_protocols = ImportedProtocol.all
  end

  # GET /imported_protocols/1
  # GET /imported_protocols/1.json
  def show
  end
  def create

  end
  # GET /imported_protocols/new
  def new
    @imported_protocol = ImportedProtocol.new
  end

  # GET /imported_protocols/1/edit
  def edit
  end

  # POST /imported_protocols
  # POST /imported_protocols.json
  def save
    @imported_protocol = ImportedProtocol.new(imported_protocol_params)

    respond_to do |format|
      if @imported_protocol.save
        format.html { redirect_to :action => "index" }
        format.json { redirect_to :action => "index"}
      else
        format.html { render :new }
        format.json { render json: @imported_protocol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imported_protocols/1
  # PATCH/PUT /imported_protocols/1.json
  def update
    respond_to do |format|
      if @imported_protocol.update(imported_protocol_params)
        format.html { redirect_to @imported_protocol, notice: 'Imported protocol was successfully updated.' }
        format.json { render :show, status: :ok, location: @imported_protocol }
      else
        format.html { render :edit }
        format.json { render json: @imported_protocol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imported_protocols/1
  # DELETE /imported_protocols/1.json
  def destroy
    @imported_protocol.destroy
    respond_to do |format|
      format.html { redirect_to imported_protocols_url, notice: 'Imported protocol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imported_protocol
      @imported_protocol = ImportedProtocol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imported_protocol_params
      params.fetch(:imported_protocol, {})
    end
end
