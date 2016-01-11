Spree::Core::Engine.add_routes do
  post '/locale/set', to: 'locale#set', defaults: { format: :json }, as: :set_locale
end
