require 'redcarpet'

posts_directory = "posts"
build_directory = "_build"
skeleton_directory = "skeleton"
html_header = File.read("#{skeleton_directory}/html_header.html")
html_footer = File.read("#{skeleton_directory}/html_footer.html")

if File.directory?(posts_directory)
  Dir.each_child(posts_directory) do |file|
    filename = file.split(".")
    next if filename[1] != "md"
    # at first I wanted to skip the file if it already existed but this allows for overwrites/edits and makes the .md the source of truth
    # next if Dir.each_child(directory).include?(filename[0] + ".html")
    # parse the markdown to html here with redcarpet
    contents = File.read("#{posts_directory}/#{file}")
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    # save the html file in the posts directory here
    html = markdown.render(contents)
    html_path = "#{build_directory}/#{filename[0]}.html"
    File.write(html_path, html_header + html + html_footer)
  end
end
