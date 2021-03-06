class ArtclesController < ApplicationController
  before_action :set_artcle, only: [:show, :edit, :update, :destroy]

  def index
    @artcles = Artcle.all
  end
  def show
  end

  def new
    @artcle = Artcle.new
  end

  def edit
  end

  def create
    @artcle = Artcle.new(artcle_params)

    respond_to do |format|
      if @artcle.save
        format.html { redirect_to @artcle, notice: 'Artcle was successfully created.' }
        format.json { render :show, status: :created, location: @artcle }
      else
        format.html { render :new }
        format.json { render json: @artcle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artcles/1
  # PATCH/PUT /artcles/1.json
  def update
    respond_to do |format|
      if @artcle.update(artcle_params)
        format.html { redirect_to @artcle, notice: 'Artcle was successfully updated.' }
        format.json { render :show, status: :ok, location: @artcle }
      else
        format.html { render :edit }
        format.json { render json: @artcle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artcles/1
  # DELETE /artcles/1.json
  def destroy
    @artcle.destroy
    respond_to do |format|
      format.html { redirect_to artcles_url, notice: 'Artcle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artcle
      @artcle = Artcle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artcle_params
      params.require(:artcle).permit(:title, :auther, :body)
    end
end
