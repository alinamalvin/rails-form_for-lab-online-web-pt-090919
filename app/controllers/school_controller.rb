class SchoolClassesController < ActionController::Base
  

	def show
		@class = Class.find(params[:id])
	end

	def new
		@school_class = SchoolClass.new
	end

	 
def create
  @school_class = SchoolClass.new(school_class_params)
  @school_class.save
  redirect_to school_class_path(@school_class)
end

def update
  @class = Class.find(params[:id])
  @class.update(class_params(:title))
  redirect_to class_path(@class)
end

def edit
	  @class = Class.find(params[:id])
	end
end
 
private
 
# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action. This
# should come after the other methods
 
def post_params(*args)
  params.require(:class).permit(*args)
end

	
end
