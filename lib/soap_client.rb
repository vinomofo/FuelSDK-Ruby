module SOAPClient

  Error                 = Class.new(RuntimeError)
  InitializationError   = Class.new(Error)
  UnknownOptionError    = Class.new(Error)
  UnknownOperationError = Class.new(Error)
  InvalidResponseError  = Class.new(Error)

  def self.client(globals = {}, &block)
    Client.new(globals, &block)
  end

  def self.observers
    @observers ||= []
  end

  def self.notify_observers(operation_name, builder, globals, locals)
    observers.inject(nil) do |response, observer|
      observer.notify(operation_name, builder, globals, locals)
    end
  end

end

require "soap_client/version"
require "soap_client/client"
require "soap_client/model"