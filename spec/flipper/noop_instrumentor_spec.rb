require 'helper'
require 'flipper/noop_instrumentor'

describe Flipper::NoopInstrumentor do
  describe ".instrument" do
    context "with name" do
      it "yields block" do
        yielded = false
        described_class.instrument(:foo) { yielded = true }
        yielded.should be_true
      end
    end

    context "with name and payload" do
      it "yields block" do
        yielded = false
        described_class.instrument(:foo, {:pay => :load}) { yielded = true }
        yielded.should be_true
      end
    end
  end
end
