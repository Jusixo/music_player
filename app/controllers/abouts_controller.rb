class AboutsController < ApplicationController
  # GET /abouts
  def index
    @abouts = About.all
  end

  # GET /abouts/1
  def show
    @about = About.find(params[:id])
  end

  # GET /abouts/new
  def new
    @about = About.new
  end

  # GET /abouts/1/edit
  def edit
    @about = About.find(params[:id])
  end

  # POST /abouts
  def create
    @about = About.new(about_params)

    if @about.save
      redirect_to @about, notice: 'About was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /abouts/1
  def update
    @about = About.find(params[:id])
    if @about.update(about_params)
      redirect_to @about, notice: 'About was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /abouts/1
  def destroy
    @about = About.find(params[:id])
    @about.destroy
    redirect_to abouts_url, notice: 'About was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def about_params
    params.fetch(:about, {})
  end
end
