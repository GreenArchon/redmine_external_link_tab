class ExternalLinkTabController < ApplicationController

  def redirect
    @projectID = Project.find(params[:id]).id
    @settings = ExternalLinkTab.find(@projectID)
    redirect_to @settings.url
  end

end
