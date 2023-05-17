<style>
body {
  background: black;
  color: #ff1694;
  width: 25em;
  margin: auto;
}
a {
  color: #8265ea;
  font-weight: bolder;
}
/* why jekyll or github, why... */
img, .markdown-body img {
    /* change to transparent */
}
img[src*="felina_icon.png"] {
    background-color: #0000;
    max-width: 128px;
}
footer {
  min-height: 90vh;
}
footer img {
  text-align: center;
  margin: auto;
  margin-top: 15vh;
  display: block;
  width: 20%;
}
</style>

*Welcome to my site!* Bienvenidos, internautas, a mi sitio web.

![My personal icon saying my name Felina with "Fe" in bold text, and "lina" in small and fine cursive text underneath that. From a distance, only the letters Fe are visible, as the chemical symbol for Iron.](./felina_icon.png)

Mi nombre es Felina Andrea Rivera Calzadillas.

I am Felina Andrea Rivera Calzadillas.

- [felina.art](https://felina.art)
- [felina.cloud](https://felina.cloud)
- [FeLiNa0 on GitHub](https://github.com/FeLiNa0)
- [LinkedIn](https://linkedin.com/in/felina-andrea)
- felina åt felina.cloud
- felina ąt felina.art

## Name

Some girls are made of sugar and spice, some are made of **Fe**rrite, **Li**thium, and **Na**trium. Iron, Lithium, Sodium. Blood, neurodivergence, and sweat.

My full name is Felina Andrea Rivera Calzadillas. I prefer the Spanish pronunciation.

I use Felina A. Rivera for the sake of conciseness and memorability.

Many institutions are unaware of or unwilling to accommodate the rich diversity of personal names around the world; therefore, I may also use:

- Felina Rivera
- Felina Andrea Rivera
- Felina A. Rivera Calzadillas
- Rivera Calzadillas

This article from the [W3C](https://www.w3.org/) describes how computers *should* be reading and storing names: ["How do people's names differ around the world, and what are the implications of those differences on the design of forms, databases, ontologies, etc. for the Web?"](https://www.w3.org/International/questions/qa-personal-names)

My name is not Celina Rivera Calzadillas or Merlina Rivera Calzadillas or Melina Rivera Calzadillas or Evelina Rivera Calzadillas or Selina Rivera Calzadillas, but they're listed here to avoid confusion.

## Posts

<ul>
  {% for post in site.posts %}
    <li>
      <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
      <p><a href="{{ post.url }}">{{ post.date | date_to_long_string }}</a></p>
      <p>{{ post.excerpt }} <a href="{{ post.url }}">(view more)</a></p>
    </li>
  {% endfor %}
</ul>   

<footer>
<p><sub>Felina A. Rivera Calzadillas. The opinions expressed herein are my own and do not represent my employer’s views in any way. Written using Martanne's Vis editor and conveniently deployed with GitHub pages.</sub></p>

<img alt='My personal icon saying my name Felina with "Fe" in bold text, and "lina" in small and fine cursive text underneath that. From a distance, only the letters Fe are visible, as the chemical symbol for Iron.' src="felina_icon.png">
</footer>
