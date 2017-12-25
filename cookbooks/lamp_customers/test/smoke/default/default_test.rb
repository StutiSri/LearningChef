# # encoding: utf-8

# Inspec test for recipe lamp_customers::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe command("mysql -h 127.0.0.1 -uroot -pfake_root_password -D 4thcoffee -e 'describe customers;'") do
  its('stdout') { should match(/id/) }
  its('stdout') { should match(/first_name/) }
  its('stdout') { should match(/last_name/) }
  its('stdout') { should match(/email/) }
end

describe command 'wget -qO- localhost' do
  its('stdout') { should match(/Customers/) }
end
