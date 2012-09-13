# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tucows.com/property_contacts_5.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.tucows.com.rb'

describe Whois::Record::Parser::WhoisTucowsCom, "property_contacts_5.expected" do

  subject do
    file = fixture("responses", "whois.tucows.com/property_contacts_5.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].name.should         == "IT, Alpha"
      subject.admin_contacts[0].organization.should == nil
      subject.admin_contacts[0].address.should      == "1200 NE 112th Ave"
      subject.admin_contacts[0].city.should         == "Vancouver"
      subject.admin_contacts[0].zip.should          == "98684"
      subject.admin_contacts[0].state.should        == "WA"
      subject.admin_contacts[0].country_code.should == "US"
      subject.admin_contacts[0].phone.should        == "(360) 885-4000"
      subject.admin_contacts[0].fax.should          == nil
      subject.admin_contacts[0].email.should        == "it@alphaecological.com"
    end
  end
end