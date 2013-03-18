module EM::FTPD

  class PassiveSocket

    def self.start(host, control_server)
      EventMachine.start_server(host, 0, self) do |conn|
        control_server.datasocket = conn
      end
    end

  end
end

