# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

Rake::Task["assets:precompile"].enhance do
	puts 'my assets:precompile hook is started!'
	dir_path = "#{Dir.pwd}/public/sites-fromfuture-net/"
	records = Dir.glob("#{dir_path}**/*")
	records.each do |f|
		if f =~ /.*.png$/ or
				f =~ /.*.jpg$/ or
				f =~ /.*.eot$/ or
				f =~ /.*.svg$/ or
				f =~ /.*.woff$/ or
				f =~ /.*.ttf$/ or
				f =~ /.*.otf$/ or
				f =~ /.*.css$/ or
				f =~ /.*.js$/ or
				f =~ /.*.wav$/ then
			File.delete(f)
		end
	end
	# puts Dir.glob("#{dir_path}**/*")
	puts 'my assets:precompile hook is finished!'
end