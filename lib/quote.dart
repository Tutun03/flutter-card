// class Quote{
//   String text='';
//   String author='';
//
//   Quote(String text,  String author)
//   {
//     this.text=text;
//     this.author=author;
//   }
//
//
// }
//
// Quote myquote=Quote('vhfyf','aniket');


// class Quote{
//   String text='';
//   String author='';
//
//   Quote(this.text,  this.author);
//
//
// }
//
// Quote myquote=Quote('vhfyf','aniket');

// class Quote{
//   String text='';
//   String author='';
//
//   Quote({required String text,required String author});
//
//
// }
//
// Quote myquote=Quote(text:'vhfyf',author:'aniket');




class Quote{
  String text='';
  String author='';

  Quote({required this.text,  required this.author} );


}

