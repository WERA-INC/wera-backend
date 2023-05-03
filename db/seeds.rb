# # User.destroy_all
# # Profile.destroy_all
# # Opportunity.destroy_all
# # ProfileTag.destroy_all
# # Tag.destroy_all
# # OpportunityTag.destroy_all
# # Employer.destroy_all
# # Application.destroy_all
# # Education.destroy_all
# # Experience.destroy_all

# puts "Starts seeding"
# # USER
# user1 = User.create!(email_address:'werabosses@ymail.com', password:'98765', password_confirmation:'98765', user_type:'admin',
# is_admin:true)
# user2 = User.create!(email_address:'ndungujeffy@yahoo.com', password:'abc123', password_confirmation:'abc123', user_type:'jobseeker',
# is_admin:false)
# user3 = User.create!(email_address:'citizenlive2@yahoo.com', password:'456bcd', password_confirmation:'456bcd', user_type:'jobseeker',
# is_admin:false)
# user4 = User.create!(email_address:'ntvkenyas@gmail.com', password:'789efg',password_confirmation:'789efg',  user_type:'employer',
# is_admin:false)
# user5 = User.create!(email_address:'ktnnewss@yahoo.com', password:'256jef', password_confirmation:'256jef', user_type:'employer',
# is_admin:false)
# user5 = User.create!(email_address:'ktnnewskenya@yahoo.com', password:'256jef', password_confirmation:'256jef', user_type:'employer',
# is_admin:false)

# # Employer
# employer1 = Employer.create!(full_name:'Moringa School' ,company_name:'Moringa Bootcamp' ,email_address:'moringa@bootcamp.com' ,company_location:'Nairobi' ,user_id:'5' ,company_description:'A tech company thats gives young people a place to learn coding')
# employer2 = Employer.create!(full_name:'Safaricom' ,company_name:'Telecommunications' ,email_address:'safaricomkenya@yahoo.com' ,company_location:'Thika' ,user_id:'2' ,company_description:'Telecommunication company that offers international communication')
# employer3 = Employer.create!(full_name:'Spotify' ,company_name:'Rhytmic Sounds' ,email_address:'rhytmicmusic@gmail.com' ,company_location:'Kakamega' ,user_id:'3' ,company_description:'We offer the best music available in the world')
# employer4 = Employer.create!(full_name:'Microsoft' ,company_name:'Bill Gates Foundations' ,email_address:'microsoftgates@gmail.com' ,company_location:'Nakuru' ,user_id:'4' ,company_description:'Offers tech surveys for companies')
# employer5 = Employer.create!(full_name:'Twiga Foods' ,company_name:'Bwibo Foods' ,email_address:'twigafoods@gmail.com' ,company_location:'Kenol' ,user_id:'5' ,company_description:'We offer fresh farm products')

# Profile.create([
#     { 
#       user_id: 5,
#       full_name: "Jeff Ndungu",
#       phone_number: "079865231",
#       date_of_birth: "1990-01-01",
#       skills: "Ruby on Rails, JavaScript, React",
#       biography: "I am a full stack developer with 5 years of experience.",
#       resume: "https://example.com/john_doe_resume.pdf"
#     },
#     { 
#       user_id: 2,
#       full_name: "Ndungu Jeff",
#       phone_number: "0762727181",
#       date_of_birth: "1995-05-05",
#       skills: "Python, Django, SQL",
#       biography: "I am a software engineer who loves building scalable web applications.",
#       resume: "https://example.com/jane_smith_resume.pdf"
#     },
#     { 
#       user_id: 3,
#       full_name: "Bob Kamau",
#       phone_number: "345-678-9012",
#       date_of_birth: "1992-12-31",
#       skills: "Java, Spring Boot, Angular",
#       biography: "I am a passionate developer with experience in both front-end and back-end development.",
#       resume: "https://example.com/bob_johnson_resume.pdf"
#     }
#   ])

# experiences = Experience.create([
#     {
#         year: "2015",
#         company: "Sleek Solutions",
#         job_description:"Developing front end website architecture",
#         profile_id:1
#     },
#     {

#         year: 2017,
#         company: "Bidco Africa Ltd",
#         job_description:"Designing user interactions on web pages.",
#         profile_id:2
#     },
#     {

#         year: 2018,
#         company:"Deloitte Group",
#         job_description:"Developing back end website applications.",
#         profile_id:1
#     },
#     {

#         year: 2020,
#         company:"East Afrcian Breweries Limited",
#         job_description:"Creating servers and databases for functionality.",
#         profile_id:2
#     },
#     {

#         year: 2022,
#         company:"Safaricom PLC",
#         job_description:"Working alongside graphic designers for web design features.",
#         profile_id:1
#     }
# ])

# educations = Education.create([
#     {

#         year_of_admission: 2008,
#         year_of_completion: 2015,
#         institution:"Mustard Seed Schools",
#         qualification:"Primagry Diploma",
#         profile_id:1
#     },
#     {

#         year_of_admission: 2016,
#         year_of_completion:2019,
#         institution:"Kagumo High School",
#         qualification:"High School Diploma",
#         profile_id:2
#     },
#     {

#         year_of_admission:2020,
#         year_of_completion:2020,
#         institution:"ICS College",
#         qualification:"Computer Packages Certificate",
#         profile_id:1
#     },
#     {

#         year_of_admission: 2020,
#         year_of_completion:"present",
#         institution:"Jomo Kenyatta University of Agriculture and Technology",
#         qualification:"Bachelor's Degree",
#         profile_id:2
#     },
#     {

#         year_of_admission: 2022,
#         year_of_completion:"present",
#         institution:"Moringa School",
#         qualification:"Certification",
#         profile_id:2
#     }
# ])
# #Opportunity

# opportunity1 = Opportunity.create!(
#     title:"Back End engineer",
#   employer_id: 1,
#   description: "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,
#         and explore the rich sets of biological data. In this role, you will build maintainable and performant APIs and data pipelines to enrich and interact with data from over half a billion cells. You will work in an interdisciplinary team composed of data scientists, bioinformaticians, biologists, and software engineers to help solve hard problems that improve biological research and ultimately, health outcomes, across all of biology.",
#   cut_off: 7,
#   job_type: "Full-time",
#   qualifications: "Bachelor's degree in Computer Science or equivalent",
#   estimated_salary: "$100,000 - $120,000",
#   responsibilities: "Design, develop, and maintain software applications",
#   application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )


# opportunity2 = Opportunity.create!(
#     title:"Finance Manager",
#   employer_id: 2,
#   description: " We are seeking a dynamic and experienced Finance Manager to join our team and play a crucial role in managing our financial operations and driving the company's financial performance.",
#   cut_off: 20,
#   job_type: "Full-time",
#   qualifications: "Bachelor's degree in Computer Science or equivalent",
#   estimated_salary: "$100,000 - $120,000",
#   responsibilities: "Design, develop, and maintain software applications",
#   application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )
# opportunity3 = Opportunity.create!(
#     title:"UI/UX Designer",
#   employer_id: 1,
#   description: "The UI/UX Designer will be responsible for creating visually appealing and user-friendly interfaces for our digital products and services, with a focus on delivering exceptional user experiences. The successful candidate will work closely with cross-functional teams, including product managers, developers, and other stakeholders, to understand user requirements, conduct user research, design wireframes and prototypes, and implement intuitive and engaging user interfaces.",
#   cut_off: 5,
#   job_type: "Full-time",
#   qualifications: "Bachelor's degree in Computer Science or equivalent",
#   estimated_salary: "$100,000 - $120,000",
#   responsibilities: "Design, develop, and maintain software applications",
#   application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )
# opportunity4 = Opportunity.create!(
# title:"Front-end Designer",
#   employer_id: 2,
#   description: "The successful candidate will work closely with cross-functional teams, including product managers, developers, and other stakeholders, to understand user requirements, conduct user research, design wireframes and prototypes, and implement intuitive and engaging user interfaces.",
#   cut_off: 3,
#   job_type: "Full-time",
#   qualifications: "Bachelor's degree in Computer Science or equivalent",
#   estimated_salary: "$100,000 - $120,000",
#   responsibilities: "Design, develop, and maintain software applications",
#   application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )


# applications= Application.create!([{opportunity_id:1, profile_id:1},{opportunity_id:2, profile_id:1},{opportunity_id:1, profile_id:1},{opportunity_id:3, profile_id:2},{opportunity_id:4, profile_id:2}])

# tags=Tag.create!([{name:"ICT", slug:"ict"},{name:"Healthcare", slug:"healthcare"},{name:"Design", slug:"design"},{name:"Education", slug:"education"},{name:"Engineering", slug:"engineering"}])

# opportunitytags = OpportunityTag.create!([{tag_id:1, opportunity_id:3},{tag_id:2, opportunity_id:2},{tag_id:3, opportunity_id:1},{tag_id:4, opportunity_id:2},{tag_id:5, opportunity_id:4}])
# User.destroy_all
# Profile.destroy_all
# Opportunity.destroy_all
# ProfileTag.destroy_all
# Tag.destroy_all
# OpportunityTag.destroy_all
# Employer.destroy_all
# Application.destroy_all
# Education.destroy_all
# Experience.destroy_all

# puts "Starts seeding"
# USER
# user1 = User.create!(email_address:'werabosses@ymail.com', password:'98765', password_confirmation:'98765', user_type:'admin',
# is_admin:true)
# user2 = User.create!(email_address:'ndungujeffy@yahoo.com', password:'abc123', password_confirmation:'abc123', user_type:'jobseeker',
# is_admin:false)
# user3 = User.create!(email_address:'citizenlive2@yahoo.com', password:'456bcd', password_confirmation:'456bcd', user_type:'jobseeker',
# is_admin:false)
# user4 = User.create!(email_address:'ntvkenyas@gmail.com', password:'789efg',password_confirmation:'789efg', user_type:'employer',
# is_admin:false)
# user5 = User.create!(email_address:'ktnnewss@yahoo.com', password:'256jef', password_confirmation:'256jef', user_type:'employer',
# is_admin:false)

# Employer
# employer1 = Employer.create!(full_name:'Moringa School' ,company_name:'Moringa Bootcamp' ,email_address:'moringa@bootcamp.com' ,company_location:'Nairobi' ,user_id:'5' ,company_description:'A tech company thats gives young people a place to learn coding')
# employer2 = Employer.create!(full_name:'Safaricom' ,company_name:'Telecommunications' ,email_address:'safaricomkenya@yahoo.com' ,company_location:'Thika' ,user_id:'2' ,company_description:'Telecommunication company that offers international communication')
# employer3 = Employer.create!(full_name:'Spotify' ,company_name:'Rhytmic Sounds' ,email_address:'rhytmicmusic@gmail.com' ,company_location:'Kakamega' ,user_id:'3' ,company_description:'We offer the best music available in the world')
# employer4 = Employer.create!(full_name:'Microsoft' ,company_name:'Bill Gates Foundations' ,email_address:'microsoftgates@gmail.com' ,company_location:'Nakuru' ,user_id:'4' ,company_description:'Offers tech surveys for companies')
# employer5 = Employer.create!(full_name:'Twiga Foods' ,company_name:'Bwibo Foods' ,email_address:'twigafoods@gmail.com' ,company_location:'Kenol' ,user_id:'5' ,company_description:'We offer fresh farm products')

# Profile.create([
# { 
# user_id: 5,
# full_name: "Jeff Ndungu",
# phone_number: "079865231",
# date_of_birth: "1990-01-01",
# skills: "Ruby on Rails, JavaScript, React",
# biography: "I am a full stack developer with 5 years of experience.",
# resume: "https://example.com/john_doe_resume.pdf",
# email_address:"ndungujeff@gmail.com"
# },

# { 
# user_id: 1,
# full_name: "Marcus Kariuki",
# phone_number: "0797654356",
# date_of_birth: "2000-10-01",
# skills: "JavaScript, React, Html and CSS",
# biography: "I am a frontend developer with 3 years of experience.",
# resume: "https://example.com/marcus_kariuki_resume.pdf",
# profile_picture:"https://shorturl.at/wFQZ1",
# email_address:"marcus@example.com"
# },

# { 
# user_id: 4,
# full_name: "Elizabeth Muthusi",
# phone_number: "0712654367",
# date_of_birth: "1998-08-05",
# skills: "SQL,Ruby on Rails, Html and CSS",
# biography: "I am a backend developer with 5 years of experience.",
# resume: "https://example.com/liz_muthusi_resume.pdf",
# email_address:"muthusiliz@gmail.com"
# },

# { 
# user_id: 2,
# full_name: "Ndungu Jeff",
# phone_number: "0762727181",
# date_of_birth: "1995-05-05",
# skills: "Python, Django, SQL",
# biography: "I am a software engineer who loves building scalable web applications.",
# resume: "https://example.com/jane_smith_resume.pdf",
# email_address:"jeffydjango@gmail.com"

# },
# { 
# user_id: 3,
# full_name: "Bob Kamau",
# phone_number: "345-678-9012",
# date_of_birth: "1992-12-31",
# skills: "Java, Spring Boot, Angular",
# biography: "I am a passionate developer with experience in both front-end and back-end development.",
# resume: "https://example.com/bob_johnson_resume.pdf",
# email_address:"bobkamaua@gmail.com"
# }
# ])

# experiences = Experience.create([
# {
# year: "2015",
# company: "Sleek Solutions",
# job_description:"Developing front end website architecture",
# profile_id:1
# },
# {

# year: 2017,
# company: "Bidco Africa Ltd",
# job_description:"Designing user interactions on web pages.",
# profile_id:2
# },
# {

# year: 2018,
# company:"Deloitte Group",
# job_description:"Developing back end website applications.",
# profile_id:1
# },
# {

# year: 2020,
# company:"East Afrcian Breweries Limited",
# job_description:"Creating servers and databases for functionality.",
# profile_id:2
# },
# {

# year: 2022,
# company:"Safaricom PLC",
# job_description:"Working alongside graphic designers for web design features.",
# profile_id:1
# }
# ])

# educations = Education.create([
# {

# year_of_admission: 2008,
# year_of_completion: 2015,
# institution:"Mustard Seed Schools",
# qualification:"Primagry Diploma",
# profile_id:1
# },
# {

# year_of_admission: 2016,
# year_of_completion:2019,
# institution:"Kagumo High School",
# qualification:"High School Diploma",
# profile_id:2
# },
# {

# year_of_admission:2020,
# year_of_completion:2020,
# institution:"ICS College",
# qualification:"Computer Packages Certificate",
# profile_id:1
# },
# {

# year_of_admission: 2020,
# year_of_completion:"present",
# institution:"Jomo Kenyatta University of Agriculture and Technology",
# qualification:"Bachelor's Degree",
# profile_id:2
# },
# {

# year_of_admission: 2022,
# year_of_completion:"present",
# institution:"Moringa School",
# qualification:"Certification",
# profile_id:2
# }
# ])
# #Opportunity

# opportunity1 = Opportunity.create!(
# title:"Marketing Manager",
# employer_id: 1,
# description: "responsible for conducting market research, analyzing trends, and identifying opportunities for growth",
# cut_off: 7,
# job_type: "Full-time",
# qualifications: "Bachelor's degree in Marketing or equivalent",
# estimated_salary: "$60,000 - $70,000",
# responsibilities: "Conduct market research and analyze trends",
# application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )

# opportunity2 = Opportunity.create!(
# title:"Frontend Developer",
# employer_id: 2,
# description: " We are seeking a dynamic and experienced Frontend Developer to join our team and play a crucial role in managing our financial operations and driving the company's financial performance.",
# cut_off: 20,
# job_type: "Full-time",
# qualifications: "Bachelor's degree in Computer Science or equivalent",
# estimated_salary: "$100,000 - $120,000",
# responsibilities: "Design, develop, and maintain software applications",
# application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )
# opportunity3 = Opportunity.create!(
# title:"Research Scientist",
# employer_id: 1,
# description: "Their goal is to advance knowledge and understanding in their field and make new discoveries that can have practical applications.",
# cut_off: 5,
# job_type: "Full-time",
# qualifications: "Bachelor's degree in Research Science or equivalent",
# estimated_salary: "$70,000 - $100,000",
# responsibilities: "Collect and analyze data generated from their experiments.",
# application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )
# opportunity4 = Opportunity.create!(
# title:"Sales Representative",
# employer_id: 2,
# description: " identifying and developing new business opportunities, building and maintaining relationships with existing customers, conducting product demonstrations, negotiating prices and contracts, and ensuring customer satisfaction",
# cut_off: 3,
# job_type: "Full-time",
# qualifications: "Bachelor's degree in a related field such as business, marketing, or communications.",
# estimated_salary: "$50,000 - $70,000",
# responsibilities: "Build and maintain relationships with customers",
# application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )

# opportunity5 = Opportunity.create!(
# title:"Administrative Manager",
# employer_id: 3,
# description: "Responsible for overseeing and coordinating the administrative operations of an organization",
# cut_off: 4,
# job_type: "Full-time",
# qualifications: "Bachelor's degree in Administration or equivalent",
# estimated_salary: "$80,000 - $100,000",
# responsibilities: "Developing and implementing administrative policies and procedures to ensure efficient operations and compliance with regulations",
# application_deadline: DateTime.new(2023, 5, 11, 23, 59, 59)
# )

# opportunity6 = Opportunity.create!(
# title:"Human Resources Manager",
# employer_id: 3,
# description: "Maintaining a positive work environment, foster employee engagement and productivity",
# cut_off: 2,
# job_type: "Full-time",
# qualifications: "Bachelor's degree in Human Resource Management or equivalent",
# estimated_salary: "$60,000 - $70,000",
# responsibilities: "Recruiting and hiring: Developing job descriptions, posting job openings, screening resumes, conducting interviews, and selecting candidates.",
# application_deadline: DateTime.new(2023, 5, 18, 23, 59, 59)
# )

# opportunity7 = Opportunity.create!(
# title:"Financial Analyst",
# employer_id: 4,
# description: "The Financial Analyst is responsible for analyzing financial data and creating financial models to assist in decision-making by senior management",
# cut_off: 3,
# job_type: "Full-time",
# qualifications: "Bachelor's degree in Finance or equivalent",
# estimated_salary: "$100,000 - $120,000",
# responsibilities: "Develop and maintain financial models that can be used to forecast future financial performance",
# application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )
# opportunity8 = Opportunity.create!(
# title:"Technical Writer",
# employer_id: 4,
# description: "creating content for a variety of mediums, including print, digital, and multimedia.",
# cut_off: 4,
# job_type: "Full-time",
# qualifications: "Bachelor's degree in Journalism or equivalent",
# estimated_salary: "$150,000 - $180,000",
# responsibilities: "writing content",
# application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )
# opportunity9 = Opportunity.create!(
# title:"Customer Service Representative",
# employer_id: 2,
# description: "A customer service representative is responsible for providing assistance to customers by answering their inquiries, resolving their complaints, and fulfilling their requests.",
# cut_off: 4,
# job_type: "Part-time",
# qualifications: "Bachelor's degree in Communications or equivalent",
# estimated_salary: "$11,000 - $130,000",
# responsibilities: "Answer customer inquiries through phone, email, or chat in a timely and professional manner",
# application_deadline: DateTime.new(2023, 6, 10, 23, 59, 59)
# )

# opportunity10 = Opportunity.create!(
# title:"Graphic Designer",
# employer_id: 2,
# description: "A graphic designer is responsible for creating visual designs and concepts for various projects, including but not limited to websites, advertisements, social media posts, product packaging, and branding materials.",
# cut_off: 3,
# job_type: "Full-time",
# qualifications: "Bachelor's degree in Graphic Desgin or equivalent",
# estimated_salary: "$75,000 - $80,000",
# responsibilities: "Develop creative and innovative design concepts that align with the project goals and target audience",
# application_deadline: DateTime.new(2023, 6, 15, 23, 59, 59)
# )

# applications= Application.create!([{opportunity_id:1, profile_id:1},{opportunity_id:2, profile_id:1},{opportunity_id:1, profile_id:1},{opportunity_id:3, profile_id:2},{opportunity_id:4, profile_id:2}])


# tags=Tag.create!([{name:"Marketing",slug:"marketing"},{name:"Software Development",slug:"software-development"},{name:"Science and Research",slug:"science-research"},{name:"Sales ",slug:"sales"},{name:"Administration and Management",slug:"administration-management"},{name:"Human Resources ",slug:"human-resources"},{name:"Finance",slug:"finance"},{name:"Writing and Translation",slug:"writing-translation"},{name:"Customer Service ",slug:"customer-service"},{name:"Creative",slug:"creative"}])

# opportunitytags = OpportunityTag.create!([{tag_id:1, opportunity_id:1},{tag_id:2, opportunity_id:2},{tag_id:3, opportunity_id:3},{tag_id:4, opportunity_id:4},{tag_id:5, opportunity_id:5},{tag_id:6, opportunity_id:6},{tag_id:7, opportunity_id:7},{tag_id:8, opportunity_id:8},{tag_id:9, opportunity_id:9},{tag_id:10, opportunity_id:10}])
