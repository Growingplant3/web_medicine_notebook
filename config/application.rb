require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WebMedicineNotebook
  class Application < Rails::Application

    # DNS Rebuilding for Rails6.0
    config.hosts << "lvh.me"
    config.hosts << "cd3ab5e8a54c43ab9e351ff436dae3b7.vfs.cloud9.us-east-2.amazonaws.com"
    config.time_zone = 'Asia/Tokyo'
    config.active_record.default_timezone = :local
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja
  end
end
