class CoursesController < ApplicationController
  def index
    matching_courses = Course.all

    @list_of_courses = matching_courses.order({:created_at=>:desc })

    
    matching_departments = Department.all

    @list_of_departments = matching_departments.order({ :created_at => :desc })
    render({:template=> "courses/index.html.erb"}) 
  end
 

  def show 
    the_id = params.fetch("path_id")
    matching_courses = Course.where({:id=> the_id}).at(0)
    @the_course = matching_courses
    
    the_id = params.fetch("path_id")

    matching_departments = Department.where({ :id => the_id }).at(0)

    @the_department = matching_departments

    render({:template=>"courses/show.html.erb"})
  end
end
