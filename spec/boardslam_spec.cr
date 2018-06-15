require "spec"

require "../lib/boardslam"

describe BoardSlam do
  describe "#missing" do
    context "given 1, 1, 1" do
      it "returns the missing numbers" do
        board = BoardSlam.new(1i8, 1i8, 1i8)
        board.missing.should eq [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]
      end
    end

    context "given 2, 2, 2" do
      it "returns the missing numbers" do
        board = BoardSlam.new(2i8, 2i8, 2i8)
        board.missing.should eq [19, 21, 22, 23, 25, 26, 27, 29, 35]
      end
    end

    context "given 3, 5, 1" do
      it "returns the missing numbers" do
        board = BoardSlam.new(3i8, 5i8, 1i8)
        board.missing.should eq [19, 30]
      end
    end
  end
end
