# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0.1'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( jquery-slim.min.js )
Rails.application.config.assets.precompile += %w( popper.min.js )
Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.js )
Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.css )

Rails.application.config.assets.precompile += %w( lux.scss )
Rails.application.config.assets.precompile += %w( cyborg.scss )

Rails.application.config.assets.precompile += %w( album.scss )
Rails.application.config.assets.precompile += %w( carousel.scss )
Rails.application.config.assets.precompile += %w( cover.scss )
Rails.application.config.assets.precompile += %w( jumbotron.scss )
Rails.application.config.assets.precompile += %w( pricing.scss )

Rails.application.config.assets.precompile += %w( tech_stack.scss )
Rails.application.config.assets.precompile += %w( adhoc.scss )
