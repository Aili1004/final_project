class GuestWeddingsController < ApplicationController
  before_action :set_guest_wedding, only: [:show, :edit, :update, :destroy]

  # GET /guest_weddings
  # GET /guest_weddings.json
  def index
    @guest_weddings = GuestWedding.all
  end

  # GET /guest_weddings/1
  # GET /guest_weddings/1.json
  def show
  end

  # GET /guest_weddings/new
  def new
    @guest_wedding = GuestWedding.new
  end

  # GET /guest_weddings/1/edit
  def edit
  end

  # POST /guest_weddings
  # POST /guest_weddings.json
  def create
    @guest_wedding = GuestWedding.new(guest_wedding_params)

    respond_to do |format|
      if @guest_wedding.save
        format.html { redirect_to @guest_wedding, notice: 'Guest wedding was successfully created.' }
        format.json { render :show, status: :created, location: @guest_wedding }
      else
        format.html { render :new }
        format.json { render json: @guest_wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guest_weddings/1
  # PATCH/PUT /guest_weddings/1.json
  def update
    respond_to do |format|
      if @guest_wedding.update(guest_wedding_params)
        format.html { redirect_to @guest_wedding, notice: 'Guest wedding was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest_wedding }
      else
        format.html { render :edit }
        format.json { render json: @guest_wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_weddings/1
  # DELETE /guest_weddings/1.json
  def destroy
    @guest_wedding.destroy
    respond_to do |format|
      format.html { redirect_to guest_weddings_url, notice: 'Guest wedding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_wedding
      @guest_wedding = GuestWedding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_wedding_params
      params.require(:guest_wedding).permit(:guest_id, :wedding_id)
    end
end
