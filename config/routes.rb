ActionController::Routing::Routes.draw do |map|
  map.connect "/queso_searches/:id/:action", :controller => 'queso_searches'
end
