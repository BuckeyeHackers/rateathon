class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :update, :destroy]

  def index
    @organizations = Organization.all
  end

  def show
  end

  def edit
  end

  def update
    if @organization.update(organization_params)
      redirect_to @organization
    else
      render 'edit'
    end
  end

  def new
    @organization = Organization.new
  end

  def create
    organization = Organization.new(organization_params)

    if organization.save
      redirect_to organization
    else
      render 'new'
    end
  end

  def destroy
    @organization.destroy

    redirect_to :index
  end

  private

    def set_organization
      @organization = Organization.find(params[:id])
    end

    def organization_params
      params.require(:id).permit(:name)
    end
end
