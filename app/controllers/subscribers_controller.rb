class SubscribersController < ApplicationController
  # GET /subscribers
  def index
    @subscribers = Subscriber.all
  end

  # GET /subscribers/1
  def show
    @subscriber = Subscriber.find(params[:id])
  end

  # GET /subscribers/new
  def new
    @subscriber = Subscriber.new
  end

  # GET /subscribers/1/edit
  def edit
    @subscriber = Subscriber.find(params[:id])
  end

  # POST /subscribers
  def create
    @subscriber = Subscriber.new(subscriber_params)

    if @subscriber.save
      redirect_to @subscriber, notice: 'Subscriber was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /subscribers/1
  def update
    @subscriber = Subscriber.find(params[:id])
    if @subscriber.update(subscriber_params)
      redirect_to @subscriber, notice: 'Subscriber was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /subscribers/1
  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy
    redirect_to subscribers_url, notice: 'Subscriber was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def subscriber_params
    params.fetch(:subscriber, {})
  end
end
