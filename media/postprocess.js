function markupDefTables() {
  const tables = document.getElementsByTagName("table");
  for (const table of tables) {
    table.classList.add('simple');
    if (table.rows[0].cells[0].innerHTML=='{: .def}') {
      table.classList.add('def');
      table.deleteRow(0);
      for (const row of table.rows) {
        const thcell = document.createElement("th");
        var tdcell = row.cells[0];
        thcell.innerHTML = tdcell.innerHTML;
        row.replaceChild(thcell,tdcell);
      }
    } else {
      table.classList.add('data');
    }
  }
  return
}
function markupNotes() {
  const blockquotes = document.getElementsByTagName("blockquote");
  for (const blockquote of blockquotes) {
    if (blockquote.children.length>0) {
      if (blockquote.children[0].innerHTML.startsWith("[!NOTE]\n")) {
        blockquote.classList.add('note');
        blockquote.children[0].innerHTML = blockquote.children[0].innerHTML.substring(8);
        noteP = document.createElement("p");
        noteP.innerHTML="NOTE";
        blockquote.insertBefore(noteP,blockquote.children[0])
      }
    }
  }
}
