# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( shared/adhoc.scss )
Rails.application.config.assets.precompile += %w( shared/lux.scss )
Rails.application.config.assets.precompile += %w( shared/cyborg.scss )
Rails.application.config.assets.precompile += %w( shared/album.scss )
Rails.application.config.assets.precompile += %w( shared/carousel.scss )
Rails.application.config.assets.precompile += %w( shared/cover.scss )
Rails.application.config.assets.precompile += %w( shared/pricing.scss )
Rails.application.config.assets.precompile += %w( shared/jumbotron.scss )
Rails.application.config.assets.precompile += %w( jquery-slim.min.js )
Rails.application.config.assets.precompile += %w( popper.min.js )
Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.js )
Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.css )
Rails.application.config.assets.precompile += %w( shared/technologies.scss )