module EM::FTPD
  class Item
    ATTRS = [:name, :owner, :group, :size, :time, :permissions, :directory]
    attr_accessor(*ATTRS)

    def initialize(options)
      options[:owner] ||= 'mahesh'
      options[:group] ||= 'mahesh'
      options[:size] ||= 0
      options.each do |attr, value|
        self.send("#{attr}=", value)
      end
    end

  end
end

