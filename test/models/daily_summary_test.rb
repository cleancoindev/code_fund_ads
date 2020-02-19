# == Schema Information
#
# Table name: daily_summaries
#
#  id                        :bigint           not null, primary key
#  click_rate                :decimal(, )      default(0.0), not null
#  clicks_count              :integer          default(0), not null
#  cost_per_click_cents      :integer          default(0), not null
#  cost_per_click_currency   :string           default("USD"), not null
#  displayed_at_date         :date             not null
#  ecpm_cents                :integer          default(0), not null
#  ecpm_currency             :string           default("USD"), not null
#  fallback_percentage       :decimal(, )      default(0.0), not null
#  fallbacks_count           :integer          default(0), not null
#  gross_revenue_cents       :integer          default(0), not null
#  gross_revenue_currency    :string           default("USD"), not null
#  house_revenue_cents       :integer          default(0), not null
#  house_revenue_currency    :string           default("USD"), not null
#  impressionable_type       :string           not null
#  impressions_count         :integer          default(0), not null
#  property_revenue_cents    :integer          default(0), not null
#  property_revenue_currency :string           default("USD"), not null
#  scoped_by_type            :string
#  unique_ip_addresses_count :integer          default(0), not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  impressionable_id         :bigint           not null
#  scoped_by_id              :string
#
# Indexes
#
#  index_daily_summaries_on_displayed_at_date       (displayed_at_date)
#  index_daily_summaries_on_impressionable_columns  (impressionable_type,impressionable_id)
#  index_daily_summaries_on_scoped_by_columns       (scoped_by_type,scoped_by_id)
#  index_daily_summaries_uniqueness                 (impressionable_type,impressionable_id,scoped_by_type,scoped_by_id,displayed_at_date) UNIQUE
#  index_daily_summaries_unscoped_uniqueness        (impressionable_type,impressionable_id,displayed_at_date) UNIQUE WHERE ((scoped_by_type IS NULL) AND (scoped_by_id IS NULL))
#

require "test_helper"

class DailySummaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
