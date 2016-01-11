module SolidusI18n
  class Configuration < Spree::Preferences::Configuration
    # These configs intend to, respectively:
    #
    #   Set locales that should be available for end users (not used anymore excepts for helpers used by solidus_globalize)
    #
    preference :available_locales, :array, default: [:en]
  end
end
