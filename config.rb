activate :asset_hash

activate :autoprefixer do |prefix|
	prefix.browsers = 'last 2 versions'
end

configure :build do
	activate :brotli
	activate :gzip
	activate :minify_css
	activate :minify_javascript

	activate :minify_html do |html|
		html.remove_intertag_spaces = true
		html.simple_doctype = true
	end
end

page '/*.json', layout: false
page '/*.txt', layout: false
page '/*.xml', layout: false

# Setting :http_prefix does not seem to work, so doing workaround:
prefix = '/mansite'

set :css_dir, "#{prefix}/css"
set :haml, { format: :html5 }
set :images_dir, "#{prefix}/img"
set :js_dir, "#{prefix}/js"
set :relative_links, false
