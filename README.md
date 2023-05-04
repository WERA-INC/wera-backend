# Wera Backend

#### Description
This is the back end of the Wera job application site that utilises the Ruby on rails framework and a Postgresql database

#### Contributors

- [alvinsleek](https://github.com/alvinsleek)
- [ndungu-jeff](https://github.com/ndungu-jeff)
- [marcus-kariuki](https://github.com/marcus-kariuki)
- [Elizabeth-M-M](https://github.com/Elizabeth-M-M)
- [Lik10280](https://github.com/Lik10280)
- [JMuhlanga](https://github.com/JMuhlanga)

## Setup Requirements:

```json

- GIT to clone this repository

- Ruby version 2.7.4 up

- POSTMAN to test the api endpoints

- POSTGRESQL (to run the database)

- Ruby Bundler gem

```


### Installation procedure

``` json
- Clone repository to your development directory on local machine.

- Open Project file on VS Code or preferred code editor.

- Check Gemfile and change Ruby version to match the one in your machine then save

- Open terminal and then proceed to run command -bundle install -, then wait until complete install

- Proceed to run command in the same terminal -rails db:create- this is in order to create the working database in postgres to do the same

- Proceed to then run the migrations which would create the tables and field in which our data will go into, do this with the command -rails db:migrate -

- Proceed to then seed example data for the test with the following command in the terminal -rails db:seed -

- After running the migrations and seeding the data then proceed to run the command -rails s- ,this will start our server 

- Proceed to note the port that is mentioned by the server , this will be key to the next stage.

- Open Postman, here you will be able to test the endpoints below using the port provided from the Rails application.


```

## End Points and Object examples

### [POST] - Sign-up User

Endpoint : /signup

Object: 

``` json
{

    "full_name":"Mr John",
    "email_address":"dl6@ymail.com",
    "password":"123456",
    "password_confirmation":"123456",
    "user_type":"Jobseeker"
}

```
### [PATCH] Disable user

Endpoint: users/{userId}


Object: 

``` json
{
   "disabled":true
}
```


###  [GET] - Get all employers 

Endpoint: /employers

Object:

``` json
[
    {
         "id": 1,
        "company_name": "Moringa Bootcamp",
        "company_location": "Nairobi",
        "company_description": "A tech company thats gives young people a place to learn coding",
        "company_logo": null,
        "email_address": "moringa@bootcamp.com",
        "created_at": "2023-04-26T11:37:11.750Z",
        "opportunities": [
            {
                "id": 1,
                "title": "Back End engineer",
                "description": "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,\n        and explore the rich sets of biological data. In this role, you will build maintainable and performant APIs and data pipelines to enrich and interact with data from over half a billion cells. You will work in an interdisciplinary team composed of data scientists, bioinformaticians, biologists, and software engineers to help solve hard problems that improve biological research and ultimately, health outcomes, across all of biology.",
                "cut_off": 7,
                "job_type": "Full-time",
                "qualifications": "Bachelor's degree in Computer Science or equivalent",
                "estimated_salary": "$100,000 - $120,000",
                "responsibilities": "Design, develop, and maintain software applications",
                "application_deadline": "2023-04-17T23:59:59.000Z",
                "description_summary": "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,\n        and explore the rich sets of biological data. In this...",
                "created_at": "2023-04-26T11:37:12.033Z"
            },
            {
                "id": 3,
                "title": "UI/UX Designer",
                "description": "The UI/UX Designer will be responsible for creating visually appealing and user-friendly interfaces for our digital products and services, with a focus on delivering exceptional user experiences. The successful candidate will work closely with cross-functional teams, including product managers, developers, and other stakeholders, to understand user requirements, conduct user research, design wireframes and prototypes, and implement intuitive and engaging user interfaces.",
                "cut_off": 5,
                "job_type": "Full-time",
                "qualifications": "Bachelor's degree in Computer Science or equivalent",
                "estimated_salary": "$100,000 - $120,000",
                "responsibilities": "Design, develop, and maintain software applications",
                "application_deadline": "2023-04-17T23:59:59.000Z",
                "description_summary": "The UI/UX Designer will be responsible for creating visually appealing and user-friendly interfaces for our digital products and services, with a focus on delivering exceptional user experiences. The successful candidate will work closely with cross-f...",
                "created_at": "2023-04-26T11:37:12.056Z"
            }
        ], ....
    }
]


```

### [GET] - Get specific employer

Endpoint: /employers/1

Object Response: 

``` json
{
    "id": 1,
    "company_name": "Moringa Bootcamp",
    "company_location": "Nairobi",
    "company_description": "A tech company thats gives young people a place to learn coding",
    "company_logo": null,
    "email_address": "moringa@bootcamp.com",
    "created_at": "2023-04-26T11:37:11.750Z",
    "opportunities": [
        {
            "id": 1,
            "title": "Back End engineer",
            "description": "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,\n        and explore the rich sets of biological data. In this role, you will build maintainable and performant APIs and data pipelines to enrich and interact with data from over half a billion cells. You will work in an interdisciplinary team composed of data scientists, bioinformaticians, biologists, and software engineers to help solve hard problems that improve biological research and ultimately, health outcomes, across all of biology.",
            "cut_off": 7,
            "job_type": "Full-time",
            "qualifications": "Bachelor's degree in Computer Science or equivalent",
            "estimated_salary": "$100,000 - $120,000",
            "responsibilities": "Design, develop, and maintain software applications",
            "application_deadline": "2023-04-17T23:59:59.000Z",
            "description_summary": "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,\n        and explore the rich sets of biological data. In this...",
            "created_at": "2023-04-26T11:37:12.033Z"
        },
        {
            "id": 3,
            "title": "UI/UX Designer",
            "description": "The UI/UX Designer will be responsible for creating visually appealing and user-friendly interfaces for our digital products and services, with a focus on delivering exceptional user experiences. The successful candidate will work closely with cross-functional teams, including product managers, developers, and other stakeholders, to understand user requirements, conduct user research, design wireframes and prototypes, and implement intuitive and engaging user interfaces.",
            "cut_off": 5,
            "job_type": "Full-time",
            "qualifications": "Bachelor's degree in Computer Science or equivalent",
            "estimated_salary": "$100,000 - $120,000",
            "responsibilities": "Design, develop, and maintain software applications",
            "application_deadline": "2023-04-17T23:59:59.000Z",
            "description_summary": "The UI/UX Designer will be responsible for creating visually appealing and user-friendly interfaces for our digital products and services, with a focus on delivering exceptional user experiences. The successful candidate will work closely with cross-f...",
            "created_at": "2023-04-26T11:37:12.056Z"
        }
    ],
    "user": {
        "id": 5,
        "email_address": "ktnnewss@yahoo.com",
        "user_type": "Employer"
    }
}

```

### [PATCH] - Update employer Details

Endpoint: /employers/1

Object Patch:

``` json
{
    "company_name":"Slack",
    "company_location":"Somewhere",
    "company_description":"Not today",
    "company_logo":"https://images.pexels.com/photos/430205/pexels-photo-430205.jpeg?auto=compress&cs=tinysrgb&w=600"
}

```
### [GET] - To show all profiles, and to show one

Endpoint to show all profiles: /profiles
Endpoint to show only one profile : /profiles/1

Object Example Response: 

``` json

{
    "id": 1,
    "full_name": "Jeff Ndungu",
    "phone_number": "079865231",
    "email_address": null,
    "created_at": "2023-04-26T11:37:11.827Z",
    "date_of_birth": "1990-01-01T00:00:00.000Z",
    "skills": "Ruby on Rails, JavaScript, React",
    "resume": "https://example.com/john_doe_resume.pdf",
    "biography": "I am a full stack developer with 5 years of experience.",
    "profile_picture": null,
    "tags": [
        {
            "name": "ICT",
            "slug": "ict",
            "opportunities": [
                {
                    "id": 3,
                    "title": "UI/UX Designer",
                    "description": "The UI/UX Designer will be responsible for creating visually appealing and user-friendly interfaces for our digital products and services, with a focus on delivering exceptional user experiences. The successful candidate will work closely with cross-functional teams, including product managers, developers, and other stakeholders, to understand user requirements, conduct user research, design wireframes and prototypes, and implement intuitive and engaging user interfaces.",
                    "cut_off": 5,
                    "job_type": "Full-time",
                    "qualifications": "Bachelor's degree in Computer Science or equivalent",
                    "estimated_salary": "$100,000 - $120,000",
                    "responsibilities": "Design, develop, and maintain software applications",
                    "application_deadline": "2023-04-17T23:59:59.000Z",
                    "description_summary": "The UI/UX Designer will be responsible for creating visually appealing and user-friendly interfaces for our digital products and services, with a focus on delivering exceptional user experiences. The successful candidate will work closely with cross-f...",
                    "created_at": "2023-04-26T11:37:12.056Z",
                    "employer": {
                        "id": 1,
                        "company_name": "Moringa Bootcamp",
                        "company_location": "Nairobi",
                        "company_description": "A tech company thats gives young people a place to learn coding",
                        "company_logo": null,
                        "email_address": "moringa@bootcamp.com",
                        "created_at": "2023-04-26T11:37:11.750Z"
                    }
                }
            ]
        },
        {
            "name": "Engineering",
            "slug": "engineering",
            "opportunities": [
                {
                    "id": 4,
                    "title": "Front-end Designer",
                    "description": "The successful candidate will work closely with cross-functional teams, including product managers, developers, and other stakeholders, to understand user requirements, conduct user research, design wireframes and prototypes, and implement intuitive and engaging user interfaces.",
                    "cut_off": 3,
                    "job_type": "Full-time",
                    "qualifications": "Bachelor's degree in Computer Science or equivalent",
                    "estimated_salary": "$100,000 - $120,000",
                    "responsibilities": "Design, develop, and maintain software applications",
                    "application_deadline": "2023-04-17T23:59:59.000Z",
                    "description_summary": "The successful candidate will work closely with cross-functional teams, including product managers, developers, and other stakeholders, to understand user requirements, conduct user research, design wireframes and prototypes, and implement intuitive a...",
                    "created_at": "2023-04-26T11:37:12.066Z",
                    "employer": {
                        "id": 2,
                        "company_name": "Telecommunications",
                        "company_location": "Thika",
                        "company_description": "Telecommunication company that offers international communication",
                        "company_logo": null,
                        "email_address": "safaricomkenya@yahoo.com",
                        "created_at": "2023-04-26T11:37:11.761Z"
                    }
                }
            ]
        }
    ],
    "experiences": [
        {
            "id": 1,
            "year": "2015",
            "company": "Sleek Solutions",
            "job_description": "Developing front end website architecture"
        },
        {
            "id": 3,
            "year": "2018",
            "company": "Deloitte Group",
            "job_description": "Developing back end website applications."
        },
        {
            "id": 5,
            "year": "2022",
            "company": "Safaricom PLC",
            "job_description": "Working alongside graphic designers for web design features."
        }
    ],
    "educations": [
        {
            "id": 1,
            "year_of_admission": "2008",
            "year_of_completion": "2015",
            "institution": "Mustard Seed Schools",
            "qualification": "Primagry Diploma"
        },
        {
            "id": 3,
            "year_of_admission": "2020",
            "year_of_completion": "2020",
            "institution": "ICS College",
            "qualification": "Computer Packages Certificate"
        }
    ],
    "applications": [
        {
            "id": 1,
            "applicant": "Jeff Ndungu",
            "title": "Back End engineer",
            "company_name": "Moringa Bootcamp",
            "created_at": "2023-04-26T11:37:12.102Z",
            "company_logo": null,
            "opportunity": {
                "id": 1,
                "title": "Back End engineer",
                "description": "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,\n        and explore the rich sets of biological data. In this role, you will build maintainable and performant APIs and data pipelines to enrich and interact with data from over half a billion cells. You will work in an interdisciplinary team composed of data scientists, bioinformaticians, biologists, and software engineers to help solve hard problems that improve biological research and ultimately, health outcomes, across all of biology.",
                "cut_off": 7,
                "job_type": "Full-time",
                "qualifications": "Bachelor's degree in Computer Science or equivalent",
                "estimated_salary": "$100,000 - $120,000",
                "responsibilities": "Design, develop, and maintain software applications",
                "application_deadline": "2023-04-17T23:59:59.000Z",
                "description_summary": "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,\n        and explore the rich sets of biological data. In this...",
                "created_at": "2023-04-26T11:37:12.033Z"
            }
        },
        {
            "id": 2,
            "applicant": "Jeff Ndungu",
            "title": "Finance Manager",
            "company_name": "Telecommunications",
            "created_at": "2023-04-26T11:37:12.115Z",
            "company_logo": null,
            "opportunity": {
                "id": 2,
                "title": "Finance Manager",
                "description": " We are seeking a dynamic and experienced Finance Manager to join our team and play a crucial role in managing our financial operations and driving the company's financial performance.",
                "cut_off": 20,
                "job_type": "Full-time",
                "qualifications": "Bachelor's degree in Computer Science or equivalent",
                "estimated_salary": "$100,000 - $120,000",
                "responsibilities": "Design, develop, and maintain software applications",
                "application_deadline": "2023-04-17T23:59:59.000Z",
                "description_summary": " We are seeking a dynamic and experienced Finance Manager to join our team and play a crucial role in managing our financial operations and driving the company's financial performance....",
                "created_at": "2023-04-26T11:37:12.043Z"
            }
        },
        {
            "id": 3,
            "applicant": "Jeff Ndungu",
            "title": "Back End engineer",
            "company_name": "Moringa Bootcamp",
            "created_at": "2023-04-26T11:37:12.128Z",
            "company_logo": null,
            "opportunity": {
                "id": 1,
                "title": "Back End engineer",
                "description": "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,\n        and explore the rich sets of biological data. In this role, you will build maintainable and performant APIs and data pipelines to enrich and interact with data from over half a billion cells. You will work in an interdisciplinary team composed of data scientists, bioinformaticians, biologists, and software engineers to help solve hard problems that improve biological research and ultimately, health outcomes, across all of biology.",
                "cut_off": 7,
                "job_type": "Full-time",
                "qualifications": "Bachelor's degree in Computer Science or equivalent",
                "estimated_salary": "$100,000 - $120,000",
                "responsibilities": "Design, develop, and maintain software applications",
                "application_deadline": "2023-04-17T23:59:59.000Z",
                "description_summary": "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,\n        and explore the rich sets of biological data. In this...",
                "created_at": "2023-04-26T11:37:12.033Z"
            }
        }
    ]
}


```

### [GET] Profiles Education

Endpoint: /profiles/2/educations

Object Response: 

``` json
[
    {
        "id": 2,
        "year_of_admission": "2016",
        "year_of_completion": "2019",
        "institution": "Kagumo High School",
        "qualification": "High School Diploma"
    },
    {
        "id": 4,
        "year_of_admission": "2020",
        "year_of_completion": "present",
        "institution": "Jomo Kenyatta University of Agriculture and Technology",
        "qualification": "Bachelor's Degree"
    },
    {
        "id": 5,
        "year_of_admission": "2022",
        "year_of_completion": "present",
        "institution": "Moringa School",
        "qualification": "Certification"
    }
]


```

### [GET] - Profile Experiences

Endpoint: /profiles/2/experiences

Object Response: 

``` json

[
    {
        "id": 2,
        "year": "2017",
        "company": "Bidco Africa Ltd",
        "job_description": "Designing user interactions on web pages."
    },
    {
        "id": 4,
        "year": "2020",
        "company": "East Afrcian Breweries Limited",
        "job_description": "Creating servers and databases for functionality."
    }
]

```

### [PATCH] - Update Profile Educations and experiences

Endpoint for Educations: /profiles/2/educations/2

Endpoint for experiences: /profiles/2/experiences/2

Object for Education:

``` json
{
    "year_of_admission": "2016",
    "year_of_completion": "2019",
    "institution": "Kangggumo High School",
    "qualification": "High School Diploma"
}

```

Object For Experiences:

``` json

{    
    "year": "2017",
    "company": "Bidcco Africa Ltd",
    "job_description": "Designing user interactions on web pages."
}

```

### [POST] -Adding to profile Education and Experiences

Endpoint for Education:/profiles/2/educations

Endpoint for Experiences:


Object for Education: /profiles/2/experiences
``` json
{
     "year_of_admission": "2023",
        "year_of_completion": "2019",
        "institution": "Moi University",
        "qualification": "Degree",
        "profile_id":2
}

```

Object For Experiences:

``` json

{        
    "year": "2017",
    "company": "Moringa",
    "job_description": "Designing user interactions on web pages.",
    "profile_id":2
}

```

### [DELETE] - To delete Educations and Experiences from ones profile

Endpoint for Educations: /profiles/2/educations/6

Endpoint for Experiences: /profiles/2/experiences/6


### [PATCH] - Update profile

Endpoint - /profiles/1

Object for Patch:

``` json
{
       
    "full_name": "Mr Dolittle",
    "phone_number": "254705673490",
    "date_of_birth": "5-10-2002",
    "skills": "Js, Ruby",
    "biography":"A rather long one",
    "resume": null,
    "profile_picture":"https://images.pexels.com/photos/3454298/pexels-photo-3454298.jpeg?auto=compress&cs=tinysrgb&w=600"
      
}

```

### [POST] - login for Job Seeker

Endpoint :

Object for post:

``` json
{
       
        "full_name": "Mr Dolittle",
        "phone_number": "254705673490",
        "date_of_birth": "5-10-2002",
        "skills": "Js, Ruby",
        "biography":"A rather long one",
        "resume": null,
        "profile_picture":"https://images.pexels.com/photos/3454298/pexels-photo-3454298.jpeg?auto=compress&cs=tinysrgb&w=600"
      
}
```