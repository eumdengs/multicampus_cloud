from entity.todos import Todos

#menu display
def menu_display():
    print("====== 투두 리스트 프로그램 ======")
    print("1.등록\t 2.수정\t 3.삭제\t 4.일정목록\t 5.전체삭제\t 6.종료")

#menu select display
def menu_select():
    num = int(input("메뉴를 선택하세요: \n"))
    return num

#message display
def message_display(message):
    print(message)

#list display
def list_display(todos):
    print("-----일정목록------")
    for key, value in todos.items():
        print(todos)    #Todos 재정의한 __str__

#list input display
def input_display():
    title = input("할일: ")
    return Todos()