class Profile2sController < ApplicationController
  before_action :set_profile2, only: [:show, :edit, :update, :destroy]

  # GET /profile2s
  # GET /profile2s.json
  def index
    @profile2s = Profile2.all
  end

  # GET /profile2s/1
  # GET /profile2s/1.json
  def show
  end

  # GET /profile2s/new
  def new
    @profile2 = Profile2.new
  end

  # GET /profile2s/1/edit
  def edit
  end

  # POST /profile2s
  # POST /profile2s.json
  def create
    @profile2 = Profile2.new(profile2_params)

    respond_to do |format|
      if @profile2.save
        format.html { redirect_to @profile2, notice: 'Profile2 was successfully created.' }
        format.json { render :show, status: :created, location: @profile2 }
      else
        format.html { render :new }
        format.json { render json: @profile2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile2s/1
  # PATCH/PUT /profile2s/1.json
  def update
    respond_to do |format|
      if @profile2.update(profile2_params)
        format.html { redirect_to @profile2, notice: 'Profile2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile2 }
      else
        format.html { render :edit }
        format.json { render json: @profile2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile2s/1
  # DELETE /profile2s/1.json
  def destroy
    @profile2.destroy
    respond_to do |format|
      format.html { redirect_to profile2s_url, notice: 'Profile2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile2
      @profile2 = Profile2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile2_params
      params.fetch(:profile2, {})
    end
end
