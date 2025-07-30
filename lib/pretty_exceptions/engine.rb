module PrettyExceptions
  class Engine < ::Rails::Engine
    isolate_namespace PrettyExceptions

    # Override Rails default rescue templates
    initializer "pretty_exceptions.inject_rescue_templates" do |app|
      templates = root.join("app", "views", "rescues")
      ActionController::Base.prepend_view_path(templates)
    end

    # Precompile our CSS
    initializer "pretty_exceptions.assets_precompile" do |app|
      app.config.assets.precompile += ["pretty_exceptions.css"]
    end
  end
end
