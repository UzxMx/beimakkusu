module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      logger.debug("connect")

      remote_ip = request.remote_ip
      role = request.headers['X-ROLE'.to_sym]
      if role == 'crawler'
        self.current_user = :crawler
      else
        self.current_user = find_verified_uesr
      end
    end

    def disconnect
      logger.debug("disconnect")
    end

    private
    def find_verified_uesr
      if user = env["warden"].user
        user
      else
        reject_unauthorized_connection
      end
    end
  end
end
