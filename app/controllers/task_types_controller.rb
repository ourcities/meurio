class TaskTypesController < InheritedResources::Base
  load_and_authorize_resource

  def create
    create! do |success, failure|
      success.html { redirect_to task_types_path }
      failure.html { render :new }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to task_types_path }
      failure.html { render :edit }
    end
  end

  def permitted_params
    {:task_type => params.fetch(:task_type, {}).permit(:name, :points, :category_id, :mode)}
  end
end
