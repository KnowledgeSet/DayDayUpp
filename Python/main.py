


print("Hello world!")


class Dog:
    """一次模拟小狗的简单尝试"""
#    每个与实例相关联的方法调用都自动传递实参self
    def __init__(self, name, age):
        """初始化属性name喝age."""
        self.name = name
        self.age = age
        
    def sit(self):
        """模拟小狗收到命令时蹲下。"""
        print(f"{self.name} is now sitting.")
        
    def roll_over(self):
        """模拟小狗收到命令时打滚。"""
        print(f"{self.name} rolled over!")


dog = Dog("petter", 12)
print(dog)
print(dog.name, dog.age)
dog.sit()
dog.roll_over()
