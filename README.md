# Abdul Aleem Syed — Portfolio

An Astro portfolio generated from the 2026 resume and styled in a technical infographic design language.

## Local development

```sh
npm install
npm run dev
```

## Resume source

- Original Gmail attachment: `source/Abdul Aleem - Full Resume 2026.pdf`
- MarkItDown conversion: `source/resume.md`
- Public download: `public/Abdul-Aleem-Resume-2026.pdf`

The Markdown conversion was produced with Microsoft MarkItDown from its official GitHub source. Run the conversion again with:

```sh
./scripts/convert-resume.sh
```

The helper clones the requested repository into the ignored `vendor/` directory and uses its PDF converter directly.

## Icon sources

Technology SVGs are sourced from [Simple Icons](https://github.com/simple-icons/simple-icons) and [Devicon](https://github.com/devicons/devicon), then rendered as monochrome masks in the site's theme colors.
