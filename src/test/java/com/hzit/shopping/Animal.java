package com.hzit.shopping;

/**
 * 定于一个父类
 */
public  class Animal {
    public void move(){
        System.out.println("动物可以移动");
    }
}
class Dog extends Animal{
    public void move(){
        System.out.println("狗可以跑");
    }
    public void bark(){
        System.out.println("狗可以吠叫");
    }
}
class TestDog{
    public static void main(String[] args) {
        Animal animal = new Animal();
        Animal dog = new Dog();
        dog.move();
        animal.move();
       // dog.bark();

    }
}


