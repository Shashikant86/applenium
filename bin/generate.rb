def applinium_scaffold
  if File.exists?(@root_feature_dir)
    puts "There is already features directory. Please remane existing features directory to carry on "
    exit 1
  end
  msg("Question") do
    puts "creating features directory."
    puts "It will contain all your project tests."
    puts "Please hit return to confirm that's what you want."
  end
  exit 2 unless STDIN.gets.chomp == ''

  FileUtils.cp_r(@source_feature_dir, @root_feature_dir)

  msg("Info") do
    puts "features subdirectory created. \n"
  end

  if File.exists?(@root_lib_dir)
    puts "There is already lib directory. Please remane existing lib directory to carry on "
    exit 1
  end
  msg("Question") do
    puts "creating lib directory."
    puts "It will contain all your project ruby files."
    puts "Please hit return to confirm that's what you want."
  end
  exit 2 unless STDIN.gets.chomp == ''

  FileUtils.cp_r(@source_lib_dir, @root_lib_dir)

  msg("Info") do
    puts "lib subdirectory created. \n"
  end

  if File.exists?(@root_scripts_dir)
    puts "There is already scripts directory. Please remane existing scripts directory to carry on "
    exit 1
  end
  msg("Question") do
    puts "creating lib directory."
    puts "It will contain all your project bash scrips files."
    puts "Please hit return to confirm that's what you want."
  end
  exit 2 unless STDIN.gets.chomp == ''

  FileUtils.cp_r(@source_script_dir, @root_script_dir)

  msg("Info") do
    puts "Scripts subdirectory created. \n"
  end

  msg("Question") do
    puts "creating lib directory."
    puts "It will contain all your project bash scrips files."
    puts "Please hit return to confirm that's what you want."
  end
  exit 2 unless STDIN.gets.chomp == ''

  FileUtils.cp_r(@source_script_dir, @root_script_dir)
  
end
