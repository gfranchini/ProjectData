class PagesController < ApplicationController
  if valid_page?
    ender template: "pages/#{params[:page]}"
  else
    render file: "public/404.html", status: :not_found
  end

  private
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
  end
end
