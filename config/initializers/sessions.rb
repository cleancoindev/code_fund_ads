# Using redis to manage sessions (same cache appliance as standard rails caching)
# IMPORTANT: "expire_after" should match "timeout_in" config in: config/initializers/devise.rb
Rails.application.config.session_store ActionDispatch::Session::CacheStore,
  key: "_code_fund_ads_session",
  expire_after: 2.weeks
