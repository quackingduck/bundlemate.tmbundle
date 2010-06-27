require(ENV['TM_BUNDLE_SUPPORT'] + '/compilers')

source_file = ENV['TM_FILEPATH']
bundle_dir  = File.dirname(source_file)

targets = YAML.load(File.read(source_file))

targets.each do |name, data|
  File.open(bundle_dir + '/' + name, 'w') do |f|
    f.write compile_tm_plist(data,name)
  end
end

puts "Bundle Built"