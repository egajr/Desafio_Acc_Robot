import datetime
from datetime import datetime

def valida_horario(agora, inicio, fim):
    data_momento = datetime.strptime(agora, '%H:%M')
    data_inicio_pgr = datetime.strptime(inicio, '%H:%M')
    data_fim_pgr = datetime.strptime(fim, '%H:%M')

    if data_momento >= data_inicio_pgr and data_momento <= data_fim_pgr:
        return True  
