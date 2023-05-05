class OpportunitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :cut_off, :job_type, :qualifications, :estimated_salary, :responsibilities, :created_at,:application_deadline, :description_summary
   has_many :tags
   belongs_to :employer
   has_many :applications
   def description_summary
    "#{self.object.description[0..250]}..."
   end 
end
