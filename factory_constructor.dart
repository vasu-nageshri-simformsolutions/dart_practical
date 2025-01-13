enum ShapeType{rectangle,triangle}

abstract class Shape{

  factory Shape(ShapeType type){
    if(type == ShapeType.rectangle){
      return Rectangle();
    }else{
      return Triangle();
    }
  }

  void draw();
}

class Triangle implements Shape{
  void draw(){
    print('Triangle.....');
  }
}

class Rectangle implements Shape{
  void draw(){
    print('Rectangle....');
  }
}

void main(){
  var s1 = Shape(ShapeType.rectangle);
  var s2 = Shape(ShapeType.triangle);

  s1.draw();
  s2.draw();
}