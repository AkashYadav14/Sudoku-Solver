import sudko_solver 
import pyautogui as pg
from os import remove,listdir,path,getcwd
from numpy import matrix
from time import sleep

def Prit(matrix):
    final = []
    str_fin = []
    for i in range(9):
        final.append(matrix[i])

    for lists in final:
        for num in lists:
            str_fin.append(str(num))

    counter = []

    for num in str_fin:
        pg.press(num)
        pg.hotkey('right')
        counter.append(num)
        if len(counter)%9 == 0:
            pg.hotkey('down')
            pg.hotkey('left')
            pg.hotkey('left')
            pg.hotkey('left')
            pg.hotkey('left')
            pg.hotkey('left')
            pg.hotkey('left')
            pg.hotkey('left')
            pg.hotkey('left')

sud =[]
for i in range(9):
    row =list(input(f'{i+1} >>> '))
    row = [int(i) for i in row]
    sud.append(row)

print(matrix(sud))
print('')
sudko_solver.sudko_solver(sud).solving()
sleep(2)
from solved_sudko import solved
print(matrix(solved))
sleep(2)
Prit(solved)
remove('solved_sudko.py')

