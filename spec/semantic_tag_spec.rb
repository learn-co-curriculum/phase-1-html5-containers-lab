require 'pry'

RSpec.describe 'index.html' do

  it 'has a valid document structure' do

  expect(html_file_contents).to include('<html')
  expect(html_file_contents).to include('</html>')

  validator = W3CValidators::NuValidator.new
  html = File.read('./index.html')
  results = validator.validate_text(html)

  error_messages = "Expected a valid document but got:\n#{results.errors.collect{|e| e.to_s}.join("\n")}"

  expect(results.errors).to be_empty, error_messages
end

  context 'within <body>' do
    it 'contains a <header> tag' do
      header = parsed_html.search('header')[0]
      expect(header).to_not be_nil, "No <header> tag was found"
      expect(html_file_contents).to include('</header>'), "No closing </header> tag was found"
    end

    it 'contains a <nav> tag' do
      nav = parsed_html.search('nav')[0]
      expect(nav).to_not be_nil, "No <nav> tag was found"
      expect(html_file_contents).to include('</nav>'), "No closing </nav> tag was found"
    end

    it 'contains a <main> tag' do
      main = parsed_html.search('main')[0]
      expect(main).to_not be_nil, "No <main> tag was found"
      expect(html_file_contents).to include('</main>'), "No closing </main> tag was found"
    end

    context 'within <main>' do
      it 'contains three separate <section> elements' do
        section = parsed_html.search('section')
        expect(section).to_not be_nil, "No <section> tags were found"
        expect(section.length).to be >= 3, "Page should contain 3 sets of section tags"
      end

      it 'contains a <figure> tag within the first <section>' do
        section = parsed_html.search('section')[0]
        figure = section.children.select {|ch| ch.name == 'figure'}[0]

        expect(figure).to_not be_nil, "No <figure> tag found within the first section"
        expect(html_file_contents).to include('</figure>'), "No closing </figure> tag was found"
        figcaption = figure.children.select {|ch| ch.name == 'figcaption'}[0]

        expect(figcaption).to_not be_nil, "No <figcaption> tag found within the first section"
        expect(html_file_contents).to include('</figcaption>'), "No closing </figcaption> tag was found"
      end

      it 'contains an <article> tag within the first <section>' do
        section = parsed_html.search('section')[0]
        article = section.children.select {|ch| ch.name == 'article'}[0]

        expect(article).to_not be_nil, "No <article> tag found within the first section"
        expect(html_file_contents).to include('</article>'), "No closing </article> tag was found"
      end

      it 'contains a <figure> tag within the second <section>' do
        section = parsed_html.search('section')[1]
        expect(section).to_not be_nil, "No <section> tags were found"
        figure = section.children.select {|ch| ch.name == 'figure'}[0]

        expect(figure).to_not be_nil, "No <figure> tag found within the second section"
        expect(html_file_contents).to include('</figure>'), "No closing </figure> tag was found"
        figcaption = figure.children.select {|ch| ch.name == 'figcaption'}[0]

        expect(figcaption).to_not be_nil, "No <figcaption> tag found within the second section"
        expect(html_file_contents).to include('</figcaption>'), "No closing </figcaption> tag was found"
      end
    end

    it 'contains a <footer> tag' do
      footer = parsed_html.search('footer')[0]
      expect(footer).to_not be_nil, "No <footer> tag was found"
      expect(html_file_contents).to include('</footer>'), "No closing </footer> tag was found"
    end

    context 'within <footer>' do
      it 'contains an <address> tag' do
        address = parsed_html.search('address')[0]
        expect(address).to_not be_nil, "No <address> tag was found"
        expect(html_file_contents).to include('</address>'), "No closing </address> tag was found"
      end

      it 'contains a <details> tag' do
        details = parsed_html.search('details')[0]
        expect(details).to_not be_nil, "No <details> tag was found"
        expect(html_file_contents).to include('</details>'), "No closing </details> tag was found"
      end
    end
  end


end
