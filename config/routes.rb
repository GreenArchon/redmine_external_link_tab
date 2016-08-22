# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'external_link_settigs', :to => 'external_link_tab#settings'
get 'external_link_url/:id', :to => 'external_link_tab#redirect'
