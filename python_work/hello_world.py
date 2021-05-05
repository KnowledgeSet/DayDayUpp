message = "Hello Python wrold!"
number = 1
print(message, number)

message = "Hello Python Crash Course wrold!"
print(message)
# 首字母大写
name = "ada lovelace"
print(name.title())
# 全部大写
print(name.upper())
# 全部小写
print(name.lower())

# 格式化字符串 
first_name = "ada"
last_name = "lovelace"
full_name = f"{first_name} {last_name}"
print(full_name)
print(f"Hello, {full_name.title()}!")
# f是3.6版本引入的，之前要使用format()
full_name = "{} {}".format(first_name, last_name)
print(full_name)

print("\tPython")
print("Languages:\n\tPython\n\tC\n\tJavaScript")

language = ' python '
print(language)
# 去除末尾空格
print(language.rstrip())
# 去除首空格
print(language.lstrip())
# 去除首尾空格
print(language.strip())

message = f"Hello {name.title()}, would you like \"to\" learn some Python today?"
print(message)


number = 2 + 3;
print(number)
number = 2 - 3
print(number)
number = 2 * 3
print(number)
number = 2 / 3
print(number)
# 两个**表示幂函数
number = 2 ** 3
print(number)
# 注意：小数位数可能是不正确的
number = 3 * 0.1
print(number)
universe_age = 14_000_000_000
print(universe_age)

x, y, z = 0, 1, 2; a = 4
print(x, y, z, a)

print(2+6)
print(10-2)
print(2*4)
print(8/1)

import this

motorcycles = ["honda", "yamaha", "suzuki"]
print(motorcycles)
motorcycles[0] = "ducati"
print(motorcycles)
motorcycles.append("ducati")
print(motorcycles)
motorcycles.insert(0, "honda")
print(motorcycles)
# del 删除后不再使用这个值
del motorcycles[1]
print(motorcycles)

# pop 删除后还可以使用这个值
popped_motorcycle = motorcycles.pop()
print(motorcycles)
print(popped_motorcycle)
popped_motorcycle = motorcycles.pop(1)
print(popped_motorcycle)
# remove 删除指定值，不知道其索引
too_expensive = "suzuki"
motorcycles.remove(too_expensive)
print(motorcycles)
print(too_expensive)

# 排序
cars = ["bmw", "audi", "doyota", "subaru"]
# 排序之后顺序不可逆
cars.sort()
print(cars)
# 排序 降序
cars.sort(reverse=True)
print(cars)

cars = ["bmw", "audi", "doyota", "subaru"]
# 不修改源数据排序
tmp_cars = sorted(cars)
print(cars)
print(tmp_cars)
# 反转数组元素
cars.reverse()
print(cars)
# 获取列表长度
print(len(cars))


magicinas = ["alice", "david", "carolina"]
for magicina in magicinas:
	print(magicina)
# 打印1~5的值，不包含5
for value in range(1, 5):
	print(value)
# 从0开始打印5个值
for value in range(5):
	print(value)

# 将一组数转为数组列表
numbers = list(range(1, 6))
print(numbers)
# 指定步长 从2开始，然后不断加2，知道超过最终值11
even_numbers = list(range(2, 11, 2))
print(even_numbers)

# 将前10个数的平方加入列表
squares = []
for value in range(1, 11):
	square = value ** 2
	squares.append(square)
print(squares)
# 最小值
print(min(squares))
# 最大值
print(max(squares))
# 求和
print(sum(squares))
# 列表解析  将for循环喝创建新元素的代码合并成一行，并自动附加新元素
squares = [value**2 for value in range(1, 11)]
print(squares)

for value in range(1, 21):
	print(value)

array = list(range(1, 1_000_000));
print(min(array))
print(max(array))
print(sum(array))

array = list(range(1, 21, 2))
print(array)
array = [value for value in range(3, 31, 3)]
print(array)
array = [value**3 for value in range(1, 10)]
print(array)

# 切片 
players = ["charles", 'martina', "michael", "florence", "eli"]
print(players[0:3])
print(players[1:4])
print(players[:4])
print(players[2:])
# 倒数第三个位置开始
print(players[-3:])
# 第三个参数表示隔几个找一个
print(players[2::2])
for player in players[:3]:
	print(player.title())

# 复制列表
my_foods = ["pizza", "falafel", "carrot cake"]
friend_foods = my_foods[:]
print(my_foods)
print(friend_foods)
my_foods.append("cannoli")
friend_foods.append("ice cream")
print(my_foods)
print(friend_foods)


# 元组 不可修改
dimensions = (200, 50)
print(dimensions[0])
print(dimensions[1])
# dimensions[0] = 1 报错
for dimension in dimensions:
	print(dimension)

# 条件语句
cars = ["audi", "bmw", "subaru", "toyota"]
for car in cars:
	if car.lower() == "bmw":
		print(car.upper())
	else:
		print(car.title())

# and 和 or
age_0 = 22
age_1 = 18
ret = age_0 >= 21 and age_1 >= 21
print(ret)
ret = age_0 >= 21 or age_1 >= 21
print(ret)
# in 和 not in
requested_toppings = ["mushrooms", "onions", "pineapple"]
ret = "mushrooms" in requested_toppings
print(ret)
ret = "marie" not in requested_toppings
print(ret)

age = 12
if age < 4:
	print("Your admission cost is $0.")
elif age < 18:
	print("Your admission cost is $25.")
else :
	print("Your admission cost is $40.")


# 字典 3.7版本后，字典按添加顺序排序，是有序的
alien_0 = {"color" : "green", "points" : 5}
print(alien_0["color"])
print(alien_0["points"])
alien_0["x_position"] = 0
alien_0["y_position"] = 25
print(alien_0)
print(alien_0.get("z_positoion"))
# 不存在键值时，可以指定一个默认值
print(alien_0.get("z_positoion", "No value"))
# 遍历字典
for key, value in alien_0.items():
	print(key, value)

for key in alien_0.keys():
	print(key)

for key in sorted(alien_0.keys()):
	print(key)

for value in alien_0.values():
	print(value)
# 过滤重复的值使用集合 set
alien_0["z_positoion"] = 5
for value in set(alien_0.values()):
	print(value)

# 集合  无序
Languages = {"python", "ruby", "python", "c"}
print(Languages)

# 嵌套
alien_0 = {"color" : "green", "points" : 5}
alien_1 = {"color" : "yellow", "points" : 10}
alien_2 = {"color" : "red", "points" : 15}
aliens = [alien_0, alien_1, alien_2]
print(aliens)


# # 用户输入喝while循环
# message = input("Tell me something, and I will repeat it back to you: ")
# print(message)
# # int() 获取数值输入
# age = input("How old are you? ")
# age = int(age)
# print(age)

current_number = 1
while current_number <= 5:
	print(current_number)
	current_number += 1

unconfirmed_users = ["alice", "brian", "candace"]
confirmed_users = []
while unconfirmed_users:
	current_user = unconfirmed_users.pop()

	print(f"Verifying user: {current_user.title()}")
	confirmed_users.append(current_user)

print("\nThe following users have been confirmed:")
for confirmed_user in confirmed_users:
	print(confirmed_user.title())



def greet_user(username):
	"""问候语."""
	print(f"Hello, {username.title()}!")

greet_user("jesse")

def describe_pet(animal_type, pet_name):
	print(f"\nI have a {animal_type}.")
	print(f"My {animal_type}'s name is {pet_name.title()}.")
# 位置实参  参数的顺序要有函数定义的形参顺序一致
describe_pet("dog", "willie")
# 关键字实参 不关心传递参数的顺序
describe_pet(animal_type="hamster", pet_name="harry")
describe_pet(pet_name="harry", animal_type="hamster")

# 函数形参可指定默认值，调用时可省略传递实参
def describe_pet(pet_name, animal_type="dog"):
	print(f"\nI have a {animal_type}.")
	print(f"My {animal_type}'s name is {pet_name.title()}.")

describe_pet(pet_name="willie")
describe_pet("willie")

def get_formatted_name(first_name, last_name):
	full_name = f"{first_name} {last_name}"
	return full_name.title()

musician = get_formatted_name("jimi", "hendrix")
print(musician)

# 传递任意数量的实参  一个 * 会创建元组，两个 ** 会创建字典
def make_pizza(*toppings):
	print(toppings)

make_pizza("pepperoni")
make_pizza("mushrooms", "greem peppers", "extra cheese")

def build_profile(first, last, **user_info):
	user_info["first_name"] = first
	user_info["last_name"] = last
	return user_info

user_profile = build_profile("albert", "einstenin", location="princeton", field="physics")
print(user_profile)

# 导入模块
# import pizza
# pizza.make2_pizza(16, "pepperoni")
# 导入特定的函数
from pizza import make2_pizza, make3_pizza as mp3
make2_pizza(12, "mushrooms", "green peppers")
# make3_pizza()
# 指定函数别名，避免名称重复
mp3()
# 导入模块中所有函数
from pizza import *