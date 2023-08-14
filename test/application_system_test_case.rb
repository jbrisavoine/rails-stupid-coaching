require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  # driven_by :headless_chrome # Update this line
  DRIVER = if ENV["DRIVER"]
    ENV["DRIVER"].to_sym
  else
    :headless_chrome
  end

  driven_by :selenium, using: DRIVER, screen_size: [1400, 1400]
end
