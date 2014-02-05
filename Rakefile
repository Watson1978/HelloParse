# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'HelloParse'

  # http://stackoverflow.com/questions/15457136/parse-for-ios-errors-when-trying-to-run-the-app/18626232#18626232
  app.vendor_project('vendor/facebook_parse', :static)

  # Parse SDK
  app.vendor_project('vendor/Parse.framework',
                      :static,
                      :products => ['Parse'],
                      :headers_dir => 'Headers')
  app.libs += %w(/usr/lib/libz.dylib /usr/lib/libsqlite3.dylib)
  app.frameworks += %w(
    AdSupport
    Social
    Accounts
    AudioToolbox
    CFNetwork
    CoreLocation
    MobileCoreServices
    QuartzCore
    Security
    StoreKit
    SystemConfiguration
  )
end
