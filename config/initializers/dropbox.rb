 CarrierWave.configure do |config|
  config.permissions = 0777
  config.dropbox_access_token = ENV['DROPBOX_ACCESS_TOKEN']
end