Before do
    page.current_window.resize_to(1920, 1080)
end

After do
    screenshot = page.save_screenshot("report/screenshots/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")
end