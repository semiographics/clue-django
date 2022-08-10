window.addEventListener("load", function() {
    const logos = Array.from(document.querySelectorAll('#clue-type path'));
    console.log(logos.length);
    for (let i = 0 ; i < logos.length; i++) {
      console.log(i," ==== ",logos[i].getTotalLength());
    };
  });

// document.addEventListener("DOMContentLoaded", function () {
//   const e = document.getElementById('#svg-logo');
//   var gx = e.contentDocument
//   console.log(gx.length);
// })

// const e = document.getElementById("svg-logo").contentDocument;
// console.log(e.length);
