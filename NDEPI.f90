import numpy as np

np.random.seed(0)

nr = 10
L = 5.0
r = 1.0

for nt in range(100, 15223, 33):
    pibar = 0
    sumxi2 = 0
    
    for i in range(nr):
        xo = 2.0
        yo = 3.0
        ncir = 0
        
        for n in range(nt):
            u1 = np.random.random()
            u2 = np.random.random()
            x = L * u1
            y = L * u2

            a1 = (x - xo) ** 2 + (y - yo) ** 2
            a2 = r ** 2
            
            if a1 <= a2:
                ncir += 1
                print(x, y)
            else:
                print(x, y, file=open('2.txt', 'a'))
        
        ac = L ** 2 * ncir / nt
        xi2 = ac ** 2
        sumxi2 += xi2
        pibar += ac
        print(ac)
    
    print(nt, pibar / nr)
    print("media", nt, pibar / nr, file=open('3.txt', 'a'))
    erro = np.sqrt(sumxi2 / nr - (pibar / nr) ** 2)
    print(nt, erro)
    print(erro)
