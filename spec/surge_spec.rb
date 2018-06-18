require_relative './spec_helper'

SOURCE_FILE="my_url.txt"

describe "The file #{SOURCE_FILE}" do
  it 'should be present' do
    file_is_present = File.exists?(SOURCE_FILE)
    expect(file_is_present).to be_truthy, "Make sure you created a file called #{SOURCE_FILE} with your URL in it."
  end

  it 'should contain a url to a surge.sh URL' do
    url = File.open(SOURCE_FILE).readline
    url.match(/^http.*\.surge\.sh\z/)
  end
end
