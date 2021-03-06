
activate :google_analytics do |ga|
  ga.tracking_id = 'UA-75732674-1'
end
###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
# Set Font Awesome Directory
set :fonts_dir,  'fonts-folder'
# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
  set :debug_assets, true
  activate :minify_css
  activate :minify_html
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css
  # Minify HTML on build
  # activate :minify_html
  # Minify Javascript on build
  activate :minify_javascript
end
