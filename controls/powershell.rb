# encoding: utf-8
# copyright: 2018, The Authors

title 'sample powershell'

# you add controls here
control 'tmp-2.0' do                        # A unique ID for this control
  impact 1                                # The criticality, if this control fails.
  title 'Create powershell related controls'             # A human-readable title
  desc 'An optional description...'

  script = <<-EOH
    Write-Output 'hello'
  EOH

  describe powershell(script) do
    its('stdout') { should eq "hello\r\n" }
    its('stderr') { should eq '' }
  end

  describe powershell(script) do
    its('strip') { should eq "hello" }
  end
end



