# name: Test Theme
# about: Test Discourse Theme
# version: 0.1
# authors: Jamie Ferguson

after_initialize do

  module TestDesign
    class Engine < ::Rails::Engine
      engine_name "test_design"
      isolate_namespace TestDesign
    end

    Rails.application.config.assets.paths.unshift File.expand_path('../assets', __FILE__)
  end

end



#### Navigation
#  Add "FAQ" to Main Navigation
register_custom_html(extraNavItem: "<li id='home-menu-item'><a href='http://jppferguson.com'>Home</a></li>")

#### Custom styles
register_asset "stylesheets/theme.scss", :desktop

#### Custom Header
register_asset "javascripts/discourse/templates/header.hbs"

#### Make Custom Settings Available
register_asset "javascripts/custom_settings.js", :client_side
