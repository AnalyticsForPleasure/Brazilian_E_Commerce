import pandas as pd
import numpy as np
import os

if __name__ == '__main__':

    res = os.listdir('data')

    for file in res:
        data = pd.read_csv(f'data/{file}')
        print(data)
