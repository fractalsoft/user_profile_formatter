# encoding: utf-8

module UserProfileFormatter
  class Railtie < Rails::Railtie
    initializer 'user_profile_formatter.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
  end
end
