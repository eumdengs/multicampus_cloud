class Todos:
    def __init__(self, id, title):
        self.id = id
        self.title = title

    #객체의 id가 같은 경우 True
    def __eq__(self, id):
        if self.id == id:
            return True
        else:
            return False
            
    #객체를 대표하는 문자열
    def __str__(self):
        return "번호: {0} 할일: {1}".format(self.id, self.title)