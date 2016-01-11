Spree::Admin::GeneralSettingsController.class_eval do
  before_filter :update_i18n_settings, only: :update

  private

  def update_i18n_settings
    params.each do |name, value|
      next unless SolidusI18n::Config.has_preference? name
      if name.to_sym != :available_locales
        SolidusI18n::Config[name] = value.map(&:to_sym)
      end
    end
  end
end
