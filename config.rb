require "slim"

# Assets
set :css_dir, "assets/css"
set :fonts_dir, "assets/fonts"
set :images_dir, "assets/images"
set :js_dir, "assets/js"
set :videos_dir, "assets/videos"

# Partials
set :partials_dir, "layouts/partials"

## Generate pages from data example
#data.products.each do |category|
#  category.products.each do |product|
#    proxy "/products/#{category.name}/#{product.name}.html", "/products/category_template.html", :locals => { :category => category, :product => product }, :ignore => true
#  end
#end

## Blogging
#activate :blog do |blog|
#  blog.paginate = true
#  blog.per_page = 10
#  blog.prefix = "blog"
#end
#page "blog/*", :layout => :article_layout

# Internationalization
#activate :i18n, :mount_at_root => :en

# Reload the browser automatically whenever files change
activate :livereload

# Pretty URLs
activate :directory_indexes

# Relative URLs
set :relative_links, true
activate :relative_assets

# Build-specific configuration
configure :build do
  #activate :asset_hash
  #activate :gzip
  #activate :imageoptim
  #activate :minify_css
  #activate :minify_html
  #activate :minify_javascript
end
