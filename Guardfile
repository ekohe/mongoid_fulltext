# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
end


guard 'rspec', :version => 2, :cli => '--color --fail-fast --drb' do
  watch(%r{^lib/(.+)\.rb$})          { "spec" }
  watch(%r{^spec/(.+)_spec.rb$})     { |m| m[0] }
  watch('spec/spec_helper.rb')       { "spec" }
end
