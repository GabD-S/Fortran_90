import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

# Leitura dos dados do arquivo percurso.txt
data = np.loadtxt('percurso.txt')

# Separar os dados em tempo (x) e posição (y)
x_data = data[:, 0]
y_data = data[:, 1]

# Configurações do gráfico
fig, ax = plt.subplots()
line, = ax.plot([], [], 'bo-', label='Posição')
ax.set_xlim(min(x_data), max(x_data))
ax.set_ylim(min(y_data), max(y_data))
ax.set_xlabel('Tempo')
ax.set_ylabel('Posição')
ax.set_title('Animação do Percurso')
ax.legend()

# Função de inicialização
def init():
    line.set_data([], [])
    return line,

# Função de animação
def update(frame):
    line.set_data(x_data[:frame], y_data[:frame])
    return line,

# Criação da animação
frames = len(x_data)
interval = 5000 / frames  # Calcula o intervalo para que a animação dure 5 segundos

ani = FuncAnimation(fig, update, frames=frames, init_func=init, blit=True, interval=interval)

# Salvando a animação como GIF
ani.save('percurso_animation.gif', writer='imagemagick')

plt.show()
