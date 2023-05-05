class ProfilesController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_profile_credentials
  rescue_from ActiveRecord::RecordNotFound, with: :profile_not_found
  # GET /profiles
  def index
    render json: Profile.all
  end
  #GET /profile_summaries
  def summary
    render json: Profile.all, each_serializer: ProfileSummarySerializer
  end
  # GET profiles/:id
  def show
    profile= Profile.find(params[:id])
    # opportunities= profile.opportunities
    render json: profile, include: ['tags','tags.opportunities', 'tags.opportunities.employer','applications','applications.opportunity', "educations","experiences"]
  end

  #PATCH /profiles/:id
  def update
    profile=Profile.find(params[:id])
    profile.update!(profile_params)
    params[:tags].map{|tag| ProfileTag.create!(profile_id:profile.id, tag_id:tag.to_i)}
    render json: profile
  end
  private
  #Acceptable profile parameters
  def profile_params
    params.permit(:full_name, :phone_number, :date_of_birth, :skills, :resume, :biography, :profile_picture, :email_address, :disabled)
  end
  #Render error message if validation fails
  def invalid_profile_credentials(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
  end
  #Render error message if instance is not found
  def profile_not_found
    render json: {errors:["Profile does not exist"]}, status: :not_found  #404
  end
end
