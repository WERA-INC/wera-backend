class TagsController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_tag_credentials
  rescue_from ActiveRecord::RecordNotFound, with: :tag_not_found
#GET /tags
  def index
    render json: Tag.all
  end
#POST /tags
  def create
    if params[:profile_id]
      profile= Profile.find(params[:profile_id])
      tag= Tag.find_by(name:params[:name])
      profile.tags.push(tag)
      render json: profile
      else
        opportunity= Opportunity.find(params[:profile_id])
      tag= Tag.find_by(name:params[:name])
      opportunity.tags.push(tag)
      render json: opportunity
    end
  end
# DELETE 
  def destroy
    if params[:profile_id]
      profile= Profile.find(params[:profile_id])
      profile.tags.delete_if{|tag| tag.name==params[:name]}
      render json: profile
    else
       opportunity= Opportunity.find(params[:opportunity_id])
      opportunity.tags.delete_if{|tag| tag.name==params[:name]}
      render json: opportunity
    end
  end

  private
#Find tags using id
  def find_tag
    Tag.find(params[:id])
  end
  #Acceptable tag parameters
  def tag_params
      params.permit(:name, :slug)
  end
#Render error message if validation fails
  def invalid_tag_credentials(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
  end
#Render error message if instance is not found
  def tag_not_found
    render json: {errors:["tag does not exist"]}, status: :not_found  #404
  end
end
