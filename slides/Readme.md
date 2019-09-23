## Notes on making the presentation slides

We use `markdown` for documentation and slides. In particular the `marp` tool hosted at https://github.com/marp-team/marp-cli

To turn these markdown files into a PDF, have a look at the documentation and to convert **all** markdown files in a folder into e.g. `html` files for presentation, run:


```bash
marp *.md --html --allow-local
``` 


