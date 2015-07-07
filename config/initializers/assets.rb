# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( uikit.min.js )
Rails.application.config.assets.precompile += %w( application.js )
Rails.application.config.assets.precompile += %w( uikit.min.css )
Rails.application.config.assets.precompile += %w( app.css )
Rails.application.config.assets.precompile += %w( fonts/* )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( codemirror.css )
Rails.application.config.assets.precompile += %w( codemirror.js )
Rails.application.config.assets.precompile += %w( markdown.js )
Rails.application.config.assets.precompile += %w( overlay.js )
Rails.application.config.assets.precompile += %w( xml.js )
Rails.application.config.assets.precompile += %w( gfm.js )
Rails.application.config.assets.precompile += %w( marked.js )
Rails.application.config.assets.precompile += %w( htmleditor.css )
Rails.application.config.assets.precompile += %w( htmleditor.js )
Rails.application.config.assets.precompile += %w( timeline.css )
Rails.application.config.assets.precompile += %w( modernizr.js )


