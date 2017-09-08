class JsonsController < ApplicationController

  before_action :set_json, only: [:show, :edit, :update, :destroy]

  # GET /jsons
  # GET /jsons.json
  def index
    @jsons = Json.all


  end

  # GET /jsons/1
  # GET /jsons/1.json
  def show
    respond_to do |format|
    format.html
    format.js
  end
  #send_data(@json.file_contents,
          #  type: @json.content_type,
          #  filename: @json.filename)
  end

  # GET /jsons/new
  def new
    @json = Json.new

  end

  # GET /jsons/1/edit
  def edit
  end

  def save

    @json=Json.new(json_params)
    byebug
    #@json.filename=params["json"]["filename"]
    #@json.content_type=params["json"]["content_type"]
    #@json.file_contents=params["json"]["file_contents"]
    #@json.objekt=params["json"]["objekt"]
    respond_to do |format|
      if @json.save
      format.html { redirect_to :action => "index"}
      format.json { redirect_to :action => "index" }
      else
      format.html { render :new }
      format.json { render json: @json.errors, status: :unprocessable_entity }
      end
    end
  end
  # POST /jsons
  # POST /jsons.json
  def create

    @json = Json.new(json_params)
    #byebug
    respond_to do |format|
      format.html { render :show, notice: 'Json was successfully created.'}
      format.json { render :show, status: :created, location: @json }
    end

    # , :remote => true, 'data-toggle' =>  "modal", 'data-target' => '#modal-window'


  end

  # PATCH/PUT /jsons/1
  # PATCH/PUT /jsons/1.json
  def update
    respond_to do |format|
      if @json.update(json_params)
        format.html { redirect_to @json, notice: 'Json was successfully updated.' }
        format.json { render :show, status: :ok, location: @json }
      else
        format.html { render :edit }
        format.json { render json: @json.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jsons/1
  # DELETE /jsons/1.json
  def destroy
    @json.destroy
    respond_to do |format|
      format.html { redirect_to jsons_url, notice: 'Json was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_json
      @json = Json.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def json_params
      params.require(:json).permit(:file1,:file,:filename,:filename1,:content_type1,:content_type,:file_contents,:file_contents1,:objekt,:objekt1)
    end
end
