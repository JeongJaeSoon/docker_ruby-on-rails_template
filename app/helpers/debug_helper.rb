module DebugHelper
  def self.debug(data)
    Logger.new(STDOUT).debug ActiveSupport::LogSubscriber.new.send(:color, data, :blue)
  end

  def self.warn(data)
    Logger.new(STDOUT).warn ActiveSupport::LogSubscriber.new.send(:color, data, :yellow)
  end

  def self.error(data)
    Logger.new(STDOUT).error ActiveSupport::LogSubscriber.new.send(:color, data, :red)
  end
end
