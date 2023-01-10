require 'terser'

activate :asset_hash
activate :livereload

activate :autoprefixer do |prefix|
	prefix.browsers = 'last 2 versions'
end

configure :build do
	activate :gzip
	activate :minify_css
	activate :minify_javascript, compressor: Terser.new

	after_configuration do
		use ::HtmlCompressor::Rack,
			compress_css: true,
			compress_javascript: true,
			css_compressor: :yui,
			enabled: true,
			javascript_compressor: :yui,
			preserve_line_breaks: false,
			preserve_patterns: [],
			remove_comments: true,
			remove_form_attributes: false,
			remove_http_protocol: false,
			remove_https_protocol: false,
			remove_input_attributes: true,
			remove_intertag_spaces: true,
			remove_javascript_protocol: true,
			remove_link_attributes: true,
			remove_multi_spaces: true,
			remove_quotes: true,
			remove_script_attributes: true,
			remove_style_attributes: true,
			simple_boolean_attributes: true,
			simple_doctype: false
	end

	after_build do |builder|
		builder.thor.run 'bin/build_brotli build'
	end
end

ignore '.DS_Store'

page '/*.json', layout: false
page '/*.txt', layout: false
page '/*.xml', layout: false

set :css_dir, app.data.site.prefix
set :haml, { format: :html5 }
set :images_dir, app.data.site.prefix
set :js_dir, app.data.site.prefix
set :relative_links, false
