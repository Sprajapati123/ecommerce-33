class CounterClass{
  var _a = 1;

   get a => _a;



  addValue(){
    print(_a.runtimeType);
    _a++;
  }
}