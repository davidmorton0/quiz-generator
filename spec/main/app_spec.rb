require File.expand_path '../../spec_helper.rb', __FILE__

describe "Sinatra Application" do
  it "should access the home page" do
    get '/'
    expect(last_response).to be_ok
  end
  
  it "should have a list of people" do
    get '/'
    expect(last_response.body).to match(/Alice/)
    expect(last_response.body).to match(/Bob/)
    expect(last_response.body).to match(/Catherine/)
  end
  
  it "should have a list of themes" do
    get '/'
    expect(last_response.body).to match(/Variables/)
    expect(last_response.body).to match(/Methods/)
    expect(last_response.body).to match(/Errors/)
  end
end
