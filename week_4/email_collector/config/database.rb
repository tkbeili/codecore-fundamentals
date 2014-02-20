require 'rubygems'
require 'data_mapper'
require './models/user.rb'

DataMapper.setup(:default, 'sqlite:project.db')

DataMapper.finalize
DataMapper.auto_upgrade!

DataMapper::Model.raise_on_save_failure = true