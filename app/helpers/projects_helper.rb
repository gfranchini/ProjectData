module ProjectsHelper
  def project_refresh_helper
    if params[:search]
      link_to "Refresh", projects_path
    end
  end

  def docker_attribute_helper(environment)
    if environment.docker
      "On Docker |".html_safe
    else
      "Not on Docker |".html_safe
    end
  end

  def rancher_attribute_helper(environment)
    if environment.rancher
      "On Rancher |".html_safe
    else
      "Not on Rancher |".html_safe
    end
  end
end
