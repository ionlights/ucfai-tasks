{# derived from: https://gist.github.com/cscorley/9144544 #}
{% extends 'latex.tpl' %}

{%- block header -%}
---
layout: post
title: "{{ resources['metadata']['name'] }}"
tags:
    - {{ resources['metadata']['ucfai']  }}
---
{%- endblock header -%}


{% block input %}
{{ '{% highlight python %}' }}
{{ cell.source }}
{{ '{% endhighlight %}' }}
{% endblock input %}

{% block data_svg %}
![svg]({{ output.metadta.filenames['image/svg+xml'] | path2support }})
{% endblock data_svg %}

{% block data_png %}
![png]({{ output.metadta.filenames['image/png'] | path2support }})
{% endblock data_png %}

{% block data_jpg %}
![jpeg]({{ output.metadta.filenames['image/jpeg'] | path2support }})
{% endblock data_jpg %}

{% block markdowncell scoped %}
{{ cell.source | wrap_text(80) }}
{% endblock markdowncell %}

{% block headingcell scoped %}
{{ '#' * cell.level }} {{ cell.source | replace('\n', ' ') }}
{% endblock headingcell %}

