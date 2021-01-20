#todoList
#todos.py

print("====== 투두 리스트 프로그램 ======")

todos = {}
index=0
# print('{0}번 : {1}', key, value)

while True:
    print("1.등록\t 2.수정\t 3.삭제\t 4.일정목록\t 5.전체삭제\t 6.종료")
    num = int(input("메뉴를 선택하세요: \n"))
    if num==6:
        print("프로그램이 종료되었습니다\n")
        break
    elif num==1:
        index += 1
        todos_value = str(input("할 일 : ")) 
        todos[index] = todos_value
        print("추가되었습니다 \n")

    elif num==3:
        index_tmp = int(input("삭제할 일정 번호 입력 : "))
        delete = input('{0} -> 일정을 삭제하시겠습니까?[y/n]'.format(todos[index_tmp]))
        if delete == 'y' or delete == 'Y':
            del todos[index_tmp]
            print("삭제되었습니다\n")
        
    elif num==4:
        print("-----일정목록------")
        for key, value in todos.items():
            print('{0}번 : {1}\n'.format(key, value))
            
    elif num==2:
        index_tmp = int(input("수정할 일정 번호 입력 : "))
        todos_value = str(input("수정할 내용 입력 : "))
        todos[index_tmp] = todos_value
        print("수정되었습니다\n")

    elif num==5:
        index=0
        todos.clear()
        print('\n')
    else:
        print("잘못된 번호 입력입니다\n")
