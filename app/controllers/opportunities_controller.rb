class OpportunitiesController < ApplicationController
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_opportunity_credentials
  rescue_from ActiveRecord::RecordNotFound, with: :opportunity_not_found
# GET /opportunities
  def index
    render json: Opportunity.all
  end
  # GET /opportunities/:id
  def show
    opp= Opportunity.find(params[:id])
    render json: opp
  end
  #POST /opportunities
  def create
    opportunity=Opportunity.create!(opportunity_params)
    params[:tags].map{|tag| OpportunityTag.create!(opportunity_id:opportunity.id, tag_id:tag.to_i)}
    render json: opportunity
  end

  private
#Acceptable opportunity parameters
  def opportunity_params
      params.permit(:employer_id, :description, :cut_off, :job_type, :qualifications, :estimated_salary, :responsibilities, :application_deadline, :title, :tags)
  end
#Render error message if validation fails
  def invalid_opportunity_credentials(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
  end

  def opportunity_not_found
    render json: {errors:["Opportunity does not exist"]}, status: :not_found  #404
  end
end
