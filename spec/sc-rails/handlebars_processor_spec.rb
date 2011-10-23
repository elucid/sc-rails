require "spec_helper"

describe Sprockets::HandlebarsProcessor do
  before(:all) do
    @assets = Sprockets::Environment.new
    @assets.append_path "spec/fixtures"
  end

  it "compiles templates with the .hjs extension" do
    @assets["test"].to_s.should == <<-TMPL
SC.TEMPLATES[\"test\"] = Handlebars.compile(\"<div class=\\\"test\\\">{{test}}<\\/div>\\n\");
TMPL
  end
end
