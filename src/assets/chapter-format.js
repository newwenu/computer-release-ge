<script>
document.addEventListener("DOMContentLoaded", function() {
  document.querySelectorAll(".chapter-number").forEach(function(el) {
    var text = el.textContent.trim();
    if (/^\d+$/.test(text)) {
      el.classList.add("is-chapter");
    } else if (/^[A-Z]$/.test(text)) {
      el.classList.add("is-appendix");
    }
  });
});
</script>