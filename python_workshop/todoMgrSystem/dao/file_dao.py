from os import read
import entity.todos import Todos
import os.path

#프로그램 종료시 todos.dat 저장
def save_list(todos):
    save_file = open("todos.dat", "w")
    for index, todos in enumerate(todos):
        save_file.write("{0}번째 | {1}\n".format(index,todos.is,todos.title))
    save_file.close()


#프로그램 시작시 "todos.dat" 파일이 존재하고 정보가 있는 경우 list todos초기화
def inti_data_load():
    todos=[]
    fileExist = os.path.isfile("todos.dat")
    if fileExist:
    read_file=open("todos.dat", "r")
        while True:
            data = read_file.readline()
            if len( data.split("|") )==2 :
                student = data.split("|")[1].strip("\n").split(",")
                todos.append(Todos(todos[0].strip(), todos[1].strip()) )
            if not data : break
        read_file.close()
    return todos
