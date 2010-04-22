module OpenIdAuthentication
  class Association < ActiveRecord::Base
    set_table_name :forum_open_id_authentication_associations

    def from_record
      OpenID::Association.new(handle, secret, issued, lifetime, assoc_type)
    end
  end
end
