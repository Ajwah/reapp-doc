require 'pry'
def render(dir, files)
  %x(mkdir #{dir.split('src/')[1]})
  Dir.chdir "#{dir.split('src/')[1]}"
  files.split("\n").each do |file|
    puts
    puts file
    %x(mkdir #{file.split('.')[0].downcase})
    Dir.chdir "#{file.split('.')[0].downcase}"
    b = %x(cat #{dir}#{file})
    props = b.match /propTypes.*(?=\{((?:[^{}]++|\{\g<1>\})++)\})/
    render = b.match /render.*(?=\{((?:[^{}]++|\{\g<1>\})++)\})/
    File.open('props.md', 'w') { |f| f.write("```#{props.to_a[1]}```") }
    File.open('styles.md', 'w') { |f| f.write("```#{render.to_a[1]}```") }
    %x(touch desc.md)
    %x(touch code.md)
    Dir.chdir ".."
  end
  Dir.chdir ".."
end

dir = "/Users/Coder/FI/reapp/reapp-ui/src/components/"
files = %x(ls #{dir})
render(dir, files)

dir = "/Users/Coder/FI/reapp/reapp-ui/src/components/buttons/"
files = %x(ls #{dir})
render(dir, files)
