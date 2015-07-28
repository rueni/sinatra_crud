class StudentsController < ApplicationController

  # GET: localhost/students/
  # the route below is tacked on at the end of the config.ru map route!
  get '/' do

    # get all the students
    @students = Students.all
    erb :students_index

    # students = Students.all.to_json


  end

end
