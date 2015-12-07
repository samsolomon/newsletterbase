class NewslettersController < ApplicationController
  before_action :find_newsletter, only: [:show, :edit, :update, :destroy]

  def index
    @newsletters = Newsletter.all.order("created_at DESC")
  end

  def show
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      redirect_to @newsletter
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_newsleter
    @newsletter = Newsletter.find(params[:id])
  end

  def newsletter_params
    params.require(:newsletter).permit(:name, :author, :subscribe_link, :description)
  end
end
