## Rabbit-Holing on Markup Langugages</div>
### July 12th, 2019

I spent a lot of time the other day rabbitholing on Markup Languages. I'm most familiar with Markdown but in the past when I've used it (in Jekyll specifically) I always somehow end up writing raw html directly into the posts anyway. I'd really like a Markup Language that's smarter. Also I don't want to reinvent the wheel on <b>everything</b> for this project, so it'd be great to find a Markup Language that already has a parser ruby gem associated with it, given that I'm planning on writing this static site generator in ruby.

I found redcarpet and installed the gem, and messed around a little in the console to see how it worked.</p>

```ruby
$ irb
> require 'redcarpet'
=> true 
> markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
=> #<Redcarpet::Markdown:0x00007f9cc8888670 @renderer=#<Redcarpet::Render::HTML:0x00007f9cc88887b0 @options={}>>
> markdown.render("## Header 2 Markdown")
=> "<h2>Header 2 Markdown</h2>\n"
```