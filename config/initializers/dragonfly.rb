require 'dragonfly/s3_data_store'

Dragonfly.app.configure do
  url_format '/attachments/:job'
  secret ENV['dragonfly_secret']
  plugin :imagemagick
  datastore :s3,
    access_key_id:     ENV['digital_ocean_spaces_key'],
    secret_access_key: ENV['digital_ocean_spaces_secret'],
    bucket_name:       ENV['digital_ocean_spaces_bucket']
end
