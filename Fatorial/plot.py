import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation

# Ler os dados do arquivo
data = np.loadtxt('fort.txt')

# Extrair colunas
resultado_fatorial = data[:, 0]
fatorial = data[:, 1]

# Configurações para o gráfico
fig, ax = plt.subplots()
line, = ax.plot([], [], 'bo-', lw=2)
ax.set_xlim(0, 300)
ax.set_ylim(0, 5)
ax.set_xlabel('Resultado do fatorial')
ax.set_ylabel('Fatorial')
ax.set_title('Animação do Fatorial')

# Inicialização do gráfico


def init():
    line.set_data([], [])
    return line,

# Função de atualização da animação


def update(frame):
    line.set_data(resultado_fatorial[:frame], fatorial[:frame])
    return line,


# Criação da animação
ani = animation.FuncAnimation(fig, update, frames=len(
    resultado_fatorial), init_func=init, blit=True)

ani.save('fatorial_animation.gif', writer='imagemagick',
         fps=len(resultado_fatorial) // 5)



plt.show()
