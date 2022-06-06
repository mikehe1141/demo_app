class PartiesController < ApplicationController
  def new
    @party = Party.new
  end

  def create
    party = Party.new(allowed_params)
    party.save

    redirect_to party_path(party)
  end

  def show
    @party = Party.find(params[:id])
  end

  private

  def allowed_params
    params.require(:party).permit(
      :title,
      :party_at,
      { guests_attributes: [:name, :rsvp_count, :dietary_info] }
    )
  end
end
