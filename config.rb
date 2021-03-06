# Middleman config file

# Settings
activate :directory_indexes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Helpers
helpers do
	def nav_active(page)
		(page_classes().split(" ").include?(page)) ? {:class => "active"} : {}
	end
end

# Build-specific configuration
configure :build do
	activate :minify_css
end
