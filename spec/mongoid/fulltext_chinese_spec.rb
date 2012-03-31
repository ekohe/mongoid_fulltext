# coding: utf-8
require 'spec_helper'

module Mongoid
  describe FullTextSearch do
    before do
      @hat = ChinesePost.create(title: "华丽的帽子")
      @i_like_ror = ChinesePost.create(title: "我最喜欢ruby on rails，但是我也使用其他工具")
      @coffee_machine = ChinesePost.create(title: "咖啡机")
      @coffees = ChinesePost.create(title: "花式咖啡举例：拿铁，卡布奇诺，摩卡……")
    end

    context "produce correct ngrams when the field contains Chinese" do

      let(:hat_ngrams) { ChinesePost.all_ngrams(@hat.title, config) }
      let(:i_like_ror_ngrams) { ChinesePost.all_ngrams(@i_like_ror.title, config) }

      let(:config) do 
        ChinesePost.mongoid_fulltext_config["mongoid_fulltext.index_chinesepost_0"].dup 
      end

      it "should not ignore Chinese characters" do
        hat_ngrams.keys.each { |e| puts e }
        hat_ngrams.size.should_not == 0

        # Chinese word with a single character should not be ignored
        coffee_machine = ChinesePost.all_ngrams(@coffee_machine.title, config)
        coffee_machine.size.should == 2
      end

      it "should not include stop words" do
        hat_ngrams.should_not include("的")
        i_like_ror_ngrams.should_not include("on")
        i_like_ror_ngrams.should_not include("其他")
        i_like_ror_ngrams.should_not include("但是")
        i_like_ror_ngrams.should include("工具")
        i_like_ror_ngrams.should include("喜欢")
      end

    end


    context "be able to search Chinese words" do
      it "should be able to search a simple word" do
        ChinesePost.fulltext_search("帽子").first.should == @hat
        ChinesePost.fulltext_search("喜欢").first.should == @i_like_ror
        ChinesePost.fulltext_search("咖啡机").first.should == @coffee_machine
        coffee = ChinesePost.fulltext_search("咖啡")
        coffee.size.should == 2
      end


      it "should be able to search English words" do
        ChinesePost.fulltext_search("ruby on rails").first.should == @i_like_ror
      end
    end
  end
end

