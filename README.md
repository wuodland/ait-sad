# AIT Software Architecture Design, Assignment 1
Our project is to do with creating and storing user-information of data. We store various fields such as first name, last name and so forth.
### Team-members and Responsibilities:

* Abhinav Singha, 120278 <br/>
Responsible for creating of the scaffold(for CRUD functionalities) and updating the routes of the project.

* Abdulrahman Safi, 119799 <br/>
Fixed the forms for better usability, changed the buttons and improved the options of the form.

* Karan Raj Baruah, 119967 <br/>
Aded css, made the tables with border and updated design of the site. Also the documentation.
<br/>

## MVC Explanation

**What is MVC, why and when do we use it?** <br/>

MVC stands for Model View Controller. It is a software architecture system that basically structure that divide the tradional application structure into 3 part i.e Model, View and Controller. THe **Model** is responsible for database related functionalities such as schema, the **View** is reponsible for the front-end or the User Interface part of the application and finally the **Controller** is responsible for handling the logic and other computation, in the interest of **separation of concerns** from the HTML document itself and have a more modular aspect of programming.
<br/>

## What logic did you put inside the models, views, and controllers?  Are you satisfied with your implementations?

We used scaffold to create the database structure for the various inputs of our project. The main controller of this project is named **Infos** pertaining to the main objective of this application that is to record user information such as First name, Last name, address and so forth. <br/>
**Controller** had the logic for creation, deletion and updation of various user data.  <br/>
**Views** has various views such as for showing, updating and creating the various DB entries. <br/>
<br/>

## Describe your implementation briefly (code snippet of models, views, and controllers)

**Controller:**
Create: <br/>

> 
    def create
    @info = Info.new(info_params)

    respond_to do |format|
      if @info.save
        format.html { redirect_to @info, notice: 'User Info was successfully created.' }
        format.json { render :show, status: :created, location: @info }
      else
        format.html { render :new }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
    end

Update:

>
    def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to @info, notice: 'Info was successfully updated.' }
        format.json { render :show, status: :ok, location: @info }
      else
        format.html { render :edit }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
    end
    
Deletion:
>
    def destroy
    @info.destroy
    respond_to do |format|
      format.html { redirect_to infos_url, notice: 'Info was successfully deleted.' }
      format.json { head :no_content }
    end
    end
    
### Views code snippet <br />
This is how we view the data in table format in views file.
>
    <td><%= info.First_name %></td>
        <td><%= info.Last_name %></td>
        <td><%= info.email %></td>
        <td><%= info.Address %></td>
        <td><%= info.gender %></td>
        <td><%= info.Age %></td>
        <td><%= info.PhoneNumber %></td>

<br />

## What did we learn from the project?
We learn how to use GIT properly to maintain a repo with more than and push changes to main repo. We also understood the flow of control of information in a MVC project after making the CRUD functionalities.
