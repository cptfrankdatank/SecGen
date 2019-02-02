require_relative '../../../../../lib/post_provision_test'

class Vsftpd234BackdoorTest < PostProvisionTest

  attr_accessor :ftp_port
  def initialize
    super
    self.module_name = 'vsftpd_234_backdoor'
    self.module_path = get_module_path(__FILE__)
    self.json_inputs = get_json_inputs
    self.ftp_port = get_json_inputs['port'][0].to_i
    self.system_ip = get_system_ip
  end

  def test_module
    if is_port_open? system_ip, ftp_port
      Print.info "PASSED: Port #{ftp_port} is open on #{get_system_name}!"
    else
      Print.err "FAILED: Port #{ftp_port} is closed on #{get_system_name}!"
    end
  end
end

Vsftpd234BackdoorTest.new.run