module ProjectsHelper
  def project_refresh_helper
    if params[:search]
      link_to "Refresh", projects_path
    end
  end
end
