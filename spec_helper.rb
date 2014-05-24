require "capybara/poltergeist"
Capybara.current_driver = :poltergeist

RSpec.configure do |config|
  config.include Capybara::DSL
  config.run_all_when_everything_filtered = true
end

describe "js error" do
  it "triggers a js error" do
    page.execute_script("this should fail completely")
  end
end
