1. In recipes - search.html.erb
I currently have photos rendering correctly after the @search_results.each do loop.
```
<%=link_to image_tag(search.photo), {action: 'show', controller: 'recipes'} %>
```
I'm thinking about changing it to be this:
```
<%= link_to image_tag(search.photo), show_recipes_path(recipe.id) %>
```
