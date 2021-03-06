class ProjectsController < ApplicationController
  def index
    @projects = Project.all
   
     respond_to do |format|
       format.html  # index.html.erb
       format.json  { render :json => @projects }
    end
  end

  def new
    @project = Project.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @project }
    end
  end
  def create
    @project = Project.new(params[:project])
     
    respond_to do |format|
      if @project.save
        format.html  { redirect_to(@project,
                      :notice => 'Post was successfully created.') }
        format.json  { render :json => @project,
                      :status => :created, :location => @project }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @project.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
end
