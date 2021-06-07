# frozen_string_literal: true

Before do
  driver.start_driver
end

After do 
  driver.driver_quit
end

at_exit do
  require 'report_builder'
  ReportBuilder.configure do |config|
    config.input_path = 'reports/'
    config.report_path = 'reports/reports'
    config.report_title = 'Desafio Ame'
    config.additional_info = {Platform: 'Android', Environment: 'Piloto'}
  end
  ReportBuilder.build_report
end

Before('@reinstall') do
  reinstall_apps
end

After('@reinstall') do
  @caps = Appium.load_appium_txt file: File.join(Dir.pwd, 'ios_caps.txt')
  Appium::Driver.new(@caps, true)
  Appium.promote_appium_methods Object
end

After do |scenario|
	Dir.mkdir('reports') unless Dir.exist?('reports')

  evidencia = 
  if scenario.failed? 
  name = scenario.name.gsub(' ', '_').downcase
  
  end
  screenshot("reports/#{evidencia}-#{name}.png")
  embed("#{evidencia}-#{name}.png", "image/png", "SCREENSHOT")
	
end
