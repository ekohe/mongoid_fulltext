# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mongoid_fulltext"
  s.version = "0.5.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Windsor"]
  s.date = "2012-03-31"
  s.description = "Full-text search for the Mongoid ORM, using n-grams extracted from text"
  s.email = "aaron.windsor@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Guardfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "data/stop_words_en.txt",
    "data/stop_words_zh_cn.txt",
    "lib/mongoid_fulltext.rb",
    "lib/mongoid_indexes.rb",
    "mongoid_fulltext.gemspec",
    "spec/models/accentless_artwork.rb",
    "spec/models/advanced_artwork.rb",
    "spec/models/basic_artwork.rb",
    "spec/models/chinese_post.rb",
    "spec/models/delayed_artwork.rb",
    "spec/models/external_artist.rb",
    "spec/models/external_artwork.rb",
    "spec/models/external_artwork_no_fields_supplied.rb",
    "spec/models/filtered_artist.rb",
    "spec/models/filtered_artwork.rb",
    "spec/models/filtered_other.rb",
    "spec/models/gallery/basic_artwork.rb",
    "spec/models/hidden_dragon.rb",
    "spec/models/multi_external_artwork.rb",
    "spec/models/multi_field_artist.rb",
    "spec/models/multi_field_artwork.rb",
    "spec/models/partitioned_artist.rb",
    "spec/models/short_prefixes_artwork.rb",
    "spec/models/stopwords_artwork.rb",
    "spec/mongoid/fulltext_chinese_spec.rb",
    "spec/mongoid/fulltext_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/aaw/mongoid_fulltext"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Full-text search for the Mongoid ORM"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<unicode_utils>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<rmmseg-cpp>, ["~> 0.2.9"])
      s.add_development_dependency(%q<mongoid>, ["~> 2.4.0"])
      s.add_development_dependency(%q<bson_ext>, ["~> 1.5.2"])
      s.add_development_dependency(%q<bson>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.9.0"])
      s.add_development_dependency(%q<rspec-expectations>, ["~> 2.9.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_development_dependency(%q<guard-spork>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<unicode_utils>, ["~> 1.0.0"])
      s.add_dependency(%q<rmmseg-cpp>, ["~> 0.2.9"])
      s.add_dependency(%q<mongoid>, ["~> 2.4.0"])
      s.add_dependency(%q<bson_ext>, ["~> 1.5.2"])
      s.add_dependency(%q<bson>, ["~> 1.5.2"])
      s.add_dependency(%q<rspec>, ["~> 2.9.0"])
      s.add_dependency(%q<rspec-expectations>, ["~> 2.9.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_dependency(%q<guard-spork>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<unicode_utils>, ["~> 1.0.0"])
    s.add_dependency(%q<rmmseg-cpp>, ["~> 0.2.9"])
    s.add_dependency(%q<mongoid>, ["~> 2.4.0"])
    s.add_dependency(%q<bson_ext>, ["~> 1.5.2"])
    s.add_dependency(%q<bson>, ["~> 1.5.2"])
    s.add_dependency(%q<rspec>, ["~> 2.9.0"])
    s.add_dependency(%q<rspec-expectations>, ["~> 2.9.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    s.add_dependency(%q<guard-spork>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end

