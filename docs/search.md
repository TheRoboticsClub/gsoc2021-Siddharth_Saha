---
layout: default
slug: /search
---
<!-- Html Elements for Search -->
<div id="search-container">
  <input type="text" id="search-input" placeholder="search...">
  <ul id="results-container"></ul>
</div>

<!-- Script pointing to search-script.js -->
<script src='{{ "/assets/js/search-script.js" | absolute_url }}' type="text/javascript"></script>

<!-- Configuration -->
<script>
SimpleJekyllSearch({
  searchInput: document.getElementById('search-input'),
  resultsContainer: document.getElementById('results-container'),
  json: '{{ "/search.json" | absolute_url }}'
})
</script>
