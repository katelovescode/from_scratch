require 'redcarpet'

directory = "posts"

if File.directory?(directory)
  Dir.each_child(directory) do |file|
    filename = file.split(".")
    next if filename[1] != "md"
    # at first I wanted to skip the file if it already existed but this allows for overwrites/edits
    # next if Dir.each_child(directory).include?(filename[0] + ".html")
    # parse the markdown to html here with redcarpet
    contents = File.read("#{directory}/#{file}")
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    # save the html file in the posts directory here
    html = markdown.render(contents)
    html_path = "#{directory}/#{filename[0]}.html"
    File.write(html_path, html)
  end
end
