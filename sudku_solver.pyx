
class sudko_solver():
    def __init__(self,list sudko):
        self.sudko = sudko
    def __return_true_false(self ,int row ,int column , int number):
        self.row =row
        self.column = column
        self.number =number
        cdef int i , j 
        
        for i in range(9):
            if self.sudko[self.row][i] == self.number:
                return False 
        
        for i in range(9):
            if self.sudko[i][self.column] == self.number:
                return False 
        
        cdef int box_x = (self.column//3)*3
        cdef int box_y =  (self.row//3)*3

        for i in range(3):
            for j in  range(3):
                if self.sudko[box_y+i][box_x+j] == self.number:
                    return False
        return True 
    
    def solving(self):
        cdef int i , j ,n
        cdef list return_solve_sudko
        for i in range(9):
            for j in range(9):
                if self.sudko[i][j] ==0:
                    for n in range(1,10):
                        if self.__return_true_false(i,j,n):
                            self.sudko[i][j] = n 
                            self.solving()
                            self.sudko[i][j] = 0
                    return 
        with open('solved_sudko.py' ,'w') as file:
            file.write(f'solved={self.sudko}')
        return True

    
    
    
        







    









