class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
    @wedding = Wedding.find params[:wedding_id]
    @images = Image.all
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @wedding = Wedding.find params[:wedding_id]
    @image = Image.find params[:id]
  end

  # GET /images/new
  def new
    @wedding = Wedding.find params[:wedding_id]
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
    @wedding = Wedding.find params[:wedding_id]
    @image = Image.find params[:id]
  end

  # POST /images
  # POST /images.json
  def create

    image_details = image_params
    if params[:file]
        response = Cloudinary::Uploader.upload params[:file]
        image_details["url"] = response["url"]
    end
    @wedding = Wedding.find params[:wedding_id]

    @image = Image.new(image_details)

    respond_to do |format|
      if @image.save
        @wedding.images << @image
        format.html { redirect_to wedding_image_path(@wedding, @image), notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update

    image_details = image_params

    if params[:file]
        response = Cloudinary::Uploader.upload params[:file]
        image_details["url"] = response["url"]
    end

    respond_to do |format|
      if @image.update(image_details)
        format.html { redirect_to wedding_image_path(@image.wedding_id, @image), notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy

    respond_to do |format|
      format.html { redirect_to wedding_images_path(@image.wedding_id), notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.permit(:url, :wedding_id)
    end
end
