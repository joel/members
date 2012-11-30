# encoding : utf-8
require "#{Rails.root}/lib/backend/file_system.rb"

tmp_path = Rails.root.join('tmp').to_s

Backend::FileSystem.check! tmp_path