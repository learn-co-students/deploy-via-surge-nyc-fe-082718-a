require_relative './spec_helper'

SOURCE_FILE="my_url.txt"

describe "The file #{SOURCE_FILE}" do
  it 'should be present' do
    file_is_present = File.exists?(SOURCE_FILE)
    expect(file_is_present).to be_truthy, "Make sure you created a file called #{SOURCE_FILE} with your URL in it."
  end

  it 'should contain a url to a surge.sh URL like http://dusty-rose.surge.sh' do
    url = File.open(SOURCE_FILE).readline
    expect(url.match(/^http.*\.surge\.sh\z/)).to be_truthy
  end
end
