//: [Previous](@previous)

import Foundation
import UIKit



/*
 ## 使用键路径动态访问 Objective-C 属性
 OC: 键和键路径常常用于键值编码 (KVC)，这是一种利用字符串标识符间接访问对象的属性和关系的机制。
 Swift: 使用 #keyPath 字符串表达式来创建由编译器检查的键和键路径，供 value(forKey:) (英文) 和 value(forKeyPath:) (英文) 等 KVC 方法使用。#keyPath 字符串表达式接受方法或属性的链式引用；同时亦支持链中的可选值链式调用，如 #keyPath(Person.bestFriend.name)。利用 #keyPath 字符串表达式创建的键路径不会向接受键路径的 API 传递与所引用的属性或方法相关的类型信息。
 */
class Person: NSObject {
    @objc var name: String
    @objc var friends: [Person] = []
    @objc var bestFriend: Person? = nil
    
    init(name: String) {
        self.name = name;
    }
}
let gabrielle = Person(name: "Gabrielle");
let jim = Person(name: "Jim");
let yuanyuan = Person(name: "Yuanyuan");
gabrielle.friends = [jim, yuanyuan];
gabrielle.bestFriend = yuanyuan;

let namePath = #keyPath(Person.name);
gabrielle.value(forKey: namePath)
#keyPath(Person.bestFriend.name)
gabrielle.value(forKeyPath: #keyPath(Person.bestFriend.name))
#keyPath(Person.friends.name)
gabrielle.value(forKeyPath: #keyPath(Person.friends.name))


/*
 ## 使用选择器安排对 Objective-C 方法的调用
 
 */
class MyViewController: UIViewController {
    let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50));

    override func viewDidLoad() {
        super.viewDidLoad();
        let action = #selector(MyViewController.tappedButton);
        myButton.addTarget(self, action: action, for: .touchUpInside);
    }

    @objc func tappedButton(_ sender: UIButton?) {
        print("tapped button");
    }
}
