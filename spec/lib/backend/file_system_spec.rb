require 'spec_helper'

describe Backend::FileSystem do
  subject { Backend::FileSystem }

  describe '#check!' do
    let(:path) { 'testing/path' }

    context 'when directory cannot be created' do
      before { File.stub(:directory?).and_return(false) }

      it { expect { subject.check!(path) }.to raise_error }
    end

  end
end
