# HTML5 Semantic Elements Lab

## Problem Statement

While there is some automatic styling that HTML provides, the purpose of the
language is to give meaning to content on a web page. HTML is used to both
describe the structure of a web page as well as provide information about the
content within.

In HTML5, there are many new tags that help us give that meaning to the content.
These are referred to as _semantic_ elements. In this lesson, we will be
introducing some of the most useful.

## Objectives

1. Introduce common semantic tags in HTML
2. Explore their use by applying them to existing content

## Non-Semantic Elements

First, before we get into semantic elements, lets see some examples of
_non-semantic_ elements. Two of the most commonly used HTML tags are `span` and
`div`. Neither tag has automatic styling. The only difference between them:
content wrapped with the `span` tag will display without line breaks, whereas
content wrapped with `div` _will_.

```html
<span>This content will share the same line...</span><span>...as this content</span>

<div>
  This message will appear on a new line
</div>
```

These tags certainly have their uses, and developers can sometimes favor them
_because_ of the lack of styling. However, they don't give any indication as to
what type of content they're wrapping. They are just _dividers_ of the content.

## Semantic Elements

Many semantic elements also lack automatic styling, and act very similar to the
`div` tag.  What they provide, instead, is an explanation of what they wrap.

### Introduce the Header and Footer Tags

The first two semantic tags to discuss are the `header` and `footer` tags. The
purpose of these may seem obvious to those who have used document editors like
Microsoft Word. _That is the point!_ The `header` tag is used to wrap all
content we would want to contain within the top, header portion of a page. The
`footer` is for everything at the foot, the bottom of a page:

```html
<header>
  <!-- Headers often contain company logos -->
</header>

<!-- All the main content of a web page goes in between -->

<footer>
  <!-- Footers often contain resources, privacy policy links, and copyright information -->
</footer>
```

Commonly, a website with many different pages will have the same header and
footer content on each page... the only content that changes is what is in
between.

### Introduce the Nav Tag

Typically, inside or just below the header section of a page are navigation
links to help users access different parts of a website. For this block of
links, we can use the `nav` tag. Wrapping `nav` around links helps describe
those links as the page navigation itself:

```html
<nav>
  <a href="about.html">About</a>
  <a href="contact.html">Contact</a>
</nav>
```

A reader glancing over an HTML page can quickly see what these links are meant
for. The `nav` tag is not meant for all links, just those typically used for
site navigation.

### Introduce the Main Tag

The `main` tag specifies the _main_ content of a web page.  This would typically
be everything in between the `header` and `footer` areas, and may contain many
nested tags:

```html
<header>
</header>
<nav></nav>
<main>
  <!-- All the main content of a web page goes here -->
</main>
<footer></footer>
```

With these three tags, all content within the `body` of a web page can be
separated in a way that is easy to interpret.

### Introduce the Section Tag

Within the `main` tag, we can continue to breakdown content into specific,
meaningful sections. One way we can do this is to use the... well... `section` tag.

```html
  <section>
    <p>Lorem ipsum dolor sit amet...</p>
    <p>Lorem ipsum dolor sit amet...</p>
  </section>
```

The `section` tag can be used to define specific portions of a web page. A page
may have multiple boxes of content within a larger container like `main`. For
each box, we can use a `section` tag to separate the content.

### Introduce the Article and Aside Tags

The `section` tag more informative than, say.. `div`, but it still may not be as
specific as we need.  For particular parts of a web page, we have semantic
options like `article` and `aside`. The `article` tag is for containing written
content such as a news story or blog post. The `aside` tag is for containing
content that may be related to other content, but is better kept separated.

#### Introduce the Figure and Figcaption Tags

Along with `section`, `article` and `aside`, we also have some tags specific for
containing image and media content. The `<figure>` tag wraps self-contained
media content. For instance, a blog post could have an accompanying image to
support the content.

The `figure` tag also comes with a companion for providing captions, the
`figcaption` tag.  Since `figure` is used for media, the `figcaption` tag can be
used to add an additional message about that media or its source.

```html
  <section>
    <article>
      Lorem ipsum dolor sit amet...
    </article>
    <figure>
      <img src="images/intro-pic.jpg"  alt="An exceptional living room." title="Welcome to Exceptional Living Rooms">
      <figcaption>"An Exceptional Living Room" by Leonardo DaVinci, photograph</figcaption>
    </figure>
  </section>
```

Here, we've wrapped an image in the `figure` tag, and included a `<figcaption>`
providing the title and creator of the image.

## Reinforcing What We've Learned About Semantic Elements

Let's practice what we've discussed. In `index.html`, we have a web page with
some example content for a real estate agency. However, most of the HTML tags
within the `body` are non-semantic `div` and `span` tags.

Your task is to read through the provided comments and add in the appropriate
semantic tags. Run `learn` to test your work and use the provided error
messaging to work through the tests. When finished, run `learn submit`.

**Note:** there are a _few_ semantic tags in `index.html` not explicitly discussed in this
readme. Use the comments to figure out what tag you will have to use.

Make sure that for every `div` and `span` you replace, that you also replace the
corresponding _closing_ tag!

You can view `index.html` by running `httpserver` or opening the file in a
separate browser tab.  It is worth noting, though, that the layout of the page
won't change as you add semantic tags. We are not changing the styling or
structure, but the description of the content contained on the page.

## Conclusion

Using semantic tags serves multiple functions. It provides a greater
_readability_ for yourself or anyone else who may edit an HTML document in the
future. It also helps search engines identify and categorize content on
websites. In addition to these two functions, using semantic tags also makes it
easier to _style_. With Cascading Style Sheets, we can easily set up styling for
_just_ the `nav`, or make sure that `main` is always a certain height on the
page. These terms are more natural to write and faster to understand than `div`
and `span`.

There are more semantic tags to explore, some of which you've already used! Tags
such as `form` and `table` are semantic as well, as they describe the contents
within.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/html5-semantic-containers-code-along' title='HTML5 Semantic Containers Code-along'>HTML5 Semantic Elements Lab</a> on Learn.co and start learning to code for free.</p>
