require 'pry'
def render(dir, files, mode)
  files.split("\n").each do |file|
    puts
    puts file
    %x(mkdir #{file.split('.')[0].downcase})
    Dir.chdir "#{file.split('.')[0].downcase}"
    b = %x(cat #{dir}#{file})
    if mode
      props = b.match /propTypes.*(?=\{((?:[^{}]++|\{\g<1>\})++)\})/
      File.open('props.md', 'w') { |f| f.write("```{#{props.to_a[1]}}```") }
    else
      render = b.match /(?=\{((?:[^{}]++|\{\g<1>\})++)\})/
      File.open('styles.md', 'w') { |f| f.write("```{#{render.to_a.join(',')}}```") }
    end
    %x(touch desc.md)
    %x(touch code.md)
    Dir.chdir ".."
  end
  Dir.chdir ".."
end

dir = "/Users/Coder/FI/reapp/reapp-ui/src/components/"
%x(mkdir #{dir.split('src/')[1]})
files = %x(ls #{dir})
Dir.chdir "#{dir.split('src/')[1]}"
render(dir, files, true)


dir = "/Users/Coder/FI/reapp/reapp-ui/src/components/buttons/"
%x(mkdir #{dir.split('src/')[1]})
files = %x(ls #{dir})
Dir.chdir "#{dir.split('src/')[1]}"
render(dir, files, true)


dir = "/Users/Coder/FI/reapp/test/node_modules/reapp-ui/themes/ios/styles/"
files = %x(ls #{dir})
render(dir, files, false)
