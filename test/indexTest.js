require ( './helpers.js' );

const chai = require("chai");
chai.use(require("chai-dom"));
const { expect } = chai;

describe("index.html", () => {
  describe("the document", () => {
    it("has a valid document structure", () => {
      const html = document.querySelector("html");
      const hint1 = "No <html> tag found";
      expect(html, hint1).to.exist;
    });
  });

  describe("the body", () => {
    before(() => {
      body = document.querySelector("body")
    })

    it("contains a <header> tag", () => {
      const header = body.querySelector("header")
      const hint = "No <header> tag was found"
      expect(header, hint).to.exist;
    })

    it("contains a <nav> tag", () => {
      const nav = body.querySelector("nav")
      const hint = "No <nav> tag was found"
      expect(nav, hint).to.exist;
    })

    it("contains a <main> tag", () => {
      const main = body.querySelector("main")
      const hint = "No <main> tag was found"
      expect(main, hint).to.exist;
    })

    it("contains a <footer> tag", () => {
      const footer = body.querySelector("footer")
      const hint = "No <footer> tag was found"
      expect(footer, hint).to.exist;
    })
  })

  describe("within <main>", () => {
    it("contains three separate <section> elements", () => {
      const sections = document.querySelectorAll("section")
      const hint = `Only found ${sections.length} <section> tag(s) within <main>`
      expect(sections.length, hint).to.equal(3)
    })
  })
  
  describe("within the <section>'s", () => {
    before(() => {
      sections = document.querySelectorAll("section")
      const hint = `Only found ${sections.length} <section> tag(s) within <main>`
      expect(sections.length, hint).to.equal(3)
    })

    it("contains a <figure> tag within the first 2 <section>'s", () => {
      for (let i = 0; i < 2; i++) {
        const figure = sections[i].querySelector("figure")
        const hint = `No <figure> tag found within <section> ${i + 1}`
        expect(figure, hint).to.exist;

        const figcaption = sections[i].querySelector("figcaption")
        const hint2 = `No <figcaption> tag found within <section> ${i + 1}`
        expect(figcaption, hint2).to.exist;
      }
    })

    it("contains an <article> tag within the first <section>", () => {
      const article = sections[0].querySelector("article")
      const hint = "No <article> tag found within the first <section>"
      expect(article, hint).to.exist;
    })
  })

  describe("within the <footer>", () => {
    before(() => {
      footer = document.querySelector("body").querySelector("footer");
      const hint = "No <footer> tag found";
      expect(footer, hint).to.exist;
    })

    it("contains an <address> tag", () => {
      const address = footer.querySelector("address");
      const hint = "No <address> tag was found";
      expect(address, hint).to.exist;
    })

    it("contains a <details> tag", () => {
      const details = footer.querySelector("details");
      const hint = "No <details> tag was found";
      expect(details, hint).to.exist;
    })
  })
});
