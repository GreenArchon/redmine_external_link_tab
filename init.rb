Redmine::Plugin.register :redmine_external_link_tab do
  name 'Redmine External Link Tab plugin'
  author 'Frédéric Fortier'
  description 'Adds a tab in the project view that redirects to an external link'
  version '0.1'
  url 'https://github.com/GreenArchon/redmine_external_link_tab'

  project_module :external_link_tab do
    permission :external_link_tab, { :external_link_tab => [:settings, :redirect] }, :public => true
  end
 
  menu :project_menu, :redmine_exernal_link_tab, { :controller => "external_link_tab", :action => "redirect" }, :caption => "Merge Requests", :before => :gantt
 
end
