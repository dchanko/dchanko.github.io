---
layout: post
title: Markdown
date: 2017-04-15
categories: website
---

{% include lib/mathjax.html %}

Here are some notes about the Markdown syntax, really only the things that are not guessable.  A comprehensive guide can be found [here](https://daringfireball.net/projects/markdown/).

### Escape

To create escaped Markdown samples, prefix the line with four spaces or a tab to create a code block.

    ### Escape

    To create...

### Code

Prefix each block with three backticks followed by the appropriate language code for syntax highlighting.

    ```cl
    (defun hello ()
      (print "Hello, World."))
    ```

```cl
(defun hello ()
  (print "Hello, World."))
```

### Math

This requires a little setup as described in detail [here](http://g14n.info/2014/09/math-on-github-pages/). Create a *_includes/lib/mathjax.html* file with the reference to the MathJax script

    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

Note this differs from the *src* in the link above, the MathJax referenced there at the time of writing will be going offline on April 30, 2017.  

This makes the following Jekyll include available

    {{ "{% include lib/mathjax.html " }} %}

for you to use in any post or page that requires math.

LaTeX formulas can then be embedded by surrounding in $$ on the preceding and following lines.

    $$
    y = mx + b 
    $$

$$
y = mx + b 
$$

### Citations

[Jekyll-scholar](https://github.com/inukshuk/jekyll-scholar) can be used for citations {% cite jekyll-scholar %}.  

In your *./_bibliography/references.bib* file you can add entries using the bibtex style:

```bibtex
@online{jekyll-scholar,
  author    = {Keil, Sylvester},
  title     = {Jekyll-Scholar},
  year      = {2011},
  url       = {https://github.com/inukshuk/jekyll-scholar},
  urldate   = {2018-03-04}
}
```

Citations can be added inline as:

{% raw %}
    {% cite jekyll-scholar %}
{% endraw %}

and then the references rendered by:

{% raw %}
    References 
    ----------

    {% bibliography --cited %}
{% endraw %}

References 
----------

{% bibliography --cited %}

This will render only the entries that are referenced in the document. 

{% raw %}
    Bibliography
    ------------

    {% bibliography %}
{% endraw %}

will render everything.

Bibliography
------------

{% bibliography %}
