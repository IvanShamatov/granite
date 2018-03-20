require 'active_support/dependencies'
require 'action_controller'

require 'granite/config'
require 'granite/context'

module Granite
  def self.config
    Granite::Config.instance
  end

  def self.context
    Granite::Context.instance
  end

  singleton_class.delegate(*Granite::Config.delegated, to: :config)
  singleton_class.delegate(*Granite::Context.delegated, to: :context)
end

require 'granite/dispatcher'
require 'granite/action'
require 'granite/projector'
require 'granite/routing'
require 'granite/rails' if defined?(::Rails)