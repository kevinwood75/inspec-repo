control "audit-1-5-1" do
  impact 1.0
  title "audit"
  desc "audit"
  describe file('/etc/init/serial.conf') do
    its('content') { should_not match /pre-start\s.*/ }
  end
end
